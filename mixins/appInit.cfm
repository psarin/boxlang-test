<cfscript>
    if (!isDefined('Application.stcSettings') or isDefined("url.reinit")){
        reInit();
    }

	function reInit(){

        Application.stcSettings = getSettings();

        // Reload the models
        // ormReload();

    }

	function getMagicStuff(){

        return {};
	}

    function getSettings(
		string siteName = Server.system.environment?.SITE
	) {

        return {};
    }
</cfscript>