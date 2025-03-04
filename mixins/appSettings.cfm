<cfscript>
	//////////////////////////////////////////////
	//         LUCEE WEB CONTEXT SETTINGS       //
	//////////////////////////////////////////////
    processingdirective preserveCase="true";

	// regional
	// default locale used for formating dates, numbers ...
	this.locale = "en_US";
	// default timezone used
	// this.timezone = "GMT";

	this.query.variableUsage="ignore";

	// scope handling
	// cfml or jee based sessions
	this.sessionType = "application";
	// untouched session lifespan
	this.sessionStorage = "memory";

	// client scope enabled or not
	this.clientTimeout = createTimeSpan( 90, 0, 0, 0 );
	this.clientStorage = "cookie";

	// prefer the local scope at un-scoped write
	this.localMode = "classic";

	// buffer the output of a tag/function body to output in case of an exception
	this.bufferOutput = false;
	this.compression = true;
	this.suppressRemoteComponentContent = false;

	// If set to false Lucee ignores type definitions with function arguments and return values
	this.typeChecking = true;

	// request
	// max lifespan of a running request
	this.requestTimeout=createTimeSpan(0,0,0,120);

	// charset
	this.charset.web="UTF-8";
	this.charset.resource="UTF-8";

	this.scopeCascading = "standard";

	//////////////////////////////////////////////
	//               MAPPINGS                   //
	//////////////////////////////////////////////

    // App root path
	if (!isNull(Server.system.environment.WEBROOT_DIR)) {
		this.webrootDir = Server.system.environment.WEBROOT_DIR;
	}else{
		this.webrootDir = expandPath(getDirectoryFromPath(getCurrentTemplatePath()) & "../..");
	}

	if (!isNull(Server.system.environment.APP_DIR)) {
		this.baseDir = this.webrootDir & Server.system.environment.APP_DIR;
	} else {
		this.baseDir = this.webrootDir & "/server";
	}

    this.mappings["/boxlang"] = this.baseDir;

    this.mappings["/server"] = this.baseDir;
	this.mappings["/boxlang/server"] = this.baseDir;


	//////////////////////////////////////////////
	//               RAMCACHE                   //
	//////////////////////////////////////////////

	this.cache.connections["boxlangtestcache"] = {
		class: 'lucee.runtime.cache.ram.RamCache'
	  , storage: false
	  , custom: {
		  "timeToIdleSeconds":"0",
		  "timeToLiveSeconds":"0"
	  }
	  , default: 'object'
  	};

</cfscript>