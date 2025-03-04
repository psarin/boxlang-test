component {

	this.name="boxlangtest";
	this.clientmanagement="true";
	this.sessionmanagement="true";
	this.setclientcookies="true";
	this.setdomaincookies="false";
	this.sessiontimeout=createTimeSpan(0,2,0,0);
	this.applicationtimeout=createTimeSpan(1,0,0,0);
	this.loginstorage="session";

	include "./mixins/appSettings.cfm";

	function onApplicationStart()
	{
		include "./mixins/appInit.cfm";
	}

	function onRequestStart()
	{
 		if(!structKeyExists(application, 'stcSettings') or structKeyExists(url, "reinit")){
			onApplicationStart();
		}

	}

}