# Test app
## Background

Running this app on following system results in BoxLang error: `Cannot invoke "ortus.boxlang.web.context.WebRequestBoxContext.getHTTPExchange()" because "requestContext" is null`

## Commands used to start server via Commandbox

```
dotenv load ./.docker/env/docker.env,./.docker/env/backend.common.env,./.docker/env/backend.production.env
server start ./.commandbox/server-boxlang-test.json
```

## Info

### System

* Macbook Pro / MacOS 15.4 Silicon
* BoxLang boxlang@1.0.0-rc.1
* CommandBox 6.1.0+00813
* Java Version: 23.0.1 (Homebrew)
* Runwar Version: 6.0.0-SNAPSHOT

### Stack trace when running index.cfm:
```
java.lang.NullPointerException: Cannot invoke "ortus.boxlang.web.context.WebRequestBoxContext.getHTTPExchange()" because "requestContext" is null
	at bxWebSupport//ortus.boxlang.web.bifs.GetHTTPRequestData._invoke(GetHTTPRequestData.java:53)
	at ortus.boxlang.runtime.bifs.BIF.invoke(BIF.java:113)
	at ortus.boxlang.runtime.bifs.BIFDescriptor.invoke(BIFDescriptor.java:210)
	at ortus.boxlang.runtime.context.ClassBoxContext.invokeFunction(ClassBoxContext.java:335)
	at boxgenerated.templates.Index$cfm$ComponentBodyLambda_1.process(/Users/psarin/WebStormProjects/boxlang-test/index.cfm:7)
	at ortus.boxlang.runtime.components.Component.processBody(Component.java:224)
	at ortus.boxlang.runtime.components.Component.processBody(Component.java:193)
	at ortus.boxlang.runtime.components.system.Output._invoke(Output.java:76)
	at ortus.boxlang.runtime.components.Component.invoke(Component.java:145)
	at ortus.boxlang.runtime.components.ComponentDescriptor.invoke(ComponentDescriptor.java:224)
	at ortus.boxlang.runtime.context.BaseBoxContext.invokeComponent(BaseBoxContext.java:505)
	at boxgenerated.templates.Index$cfm._invoke(/Users/psarin/WebStormProjects/boxlang-test/index.cfm:2)
	at ortus.boxlang.runtime.runnables.BoxTemplate.invoke(BoxTemplate.java:60)
	at ortus.boxlang.runtime.context.BaseBoxContext.includeTemplate(BaseBoxContext.java:637)
	at ortus.boxlang.runtime.application.ApplicationClassListener.onRequest(ApplicationClassListener.java:105)
	at ortus.boxlang.web.WebRequestExecutor.execute(WebRequestExecutor.java:129)
	at ortus.boxlang.servlet.BoxLangServlet.service(BoxLangServlet.java:113)
	at io.undertow.servlet.handlers.ServletHandler.handleRequest(ServletHandler.java:74)
	at io.undertow.servlet.handlers.FilterHandler$FilterChainImpl.doFilter(FilterHandler.java:129)
	at runwar.servlet.RegexPathInfoFilter.doFilter(RegexPathInfoFilter.java:57)
	at io.undertow.servlet.core.ManagedFilter.doFilter(ManagedFilter.java:67)
	at io.undertow.servlet.handlers.FilterHandler$FilterChainImpl.doFilter(FilterHandler.java:131)
	at io.undertow.servlet.handlers.FilterHandler.handleRequest(FilterHandler.java:84)
	at io.undertow.servlet.handlers.security.ServletSecurityRoleHandler.handleRequest(ServletSecurityRoleHandler.java:62)
	at io.undertow.servlet.handlers.ServletChain$1.handleRequest(ServletChain.java:68)
	at io.undertow.servlet.handlers.ServletDispatchingHandler.handleRequest(ServletDispatchingHandler.java:36)
	at runwar.undertow.SSLCertHeaderHandler.handleRequest(SSLCertHeaderHandler.java:171)
	at io.undertow.servlet.handlers.RedirectDirHandler.handleRequest(RedirectDirHandler.java:68)
	at io.undertow.servlet.handlers.security.SSLInformationAssociationHandler.handleRequest(SSLInformationAssociationHandler.java:117)
	at io.undertow.servlet.handlers.security.ServletAuthenticationCallHandler.handleRequest(ServletAuthenticationCallHandler.java:57)
	at io.undertow.server.handlers.PredicateHandler.handleRequest(PredicateHandler.java:43)
	at io.undertow.security.handlers.AbstractConfidentialityHandler.handleRequest(AbstractConfidentialityHandler.java:46)
	at io.undertow.servlet.handlers.security.ServletConfidentialityConstraintHandler.handleRequest(ServletConfidentialityConstraintHandler.java:64)
	at io.undertow.security.handlers.AuthenticationMechanismsHandler.handleRequest(AuthenticationMechanismsHandler.java:60)
	at io.undertow.servlet.handlers.security.CachedAuthenticatedSessionHandler.handleRequest(CachedAuthenticatedSessionHandler.java:77)
	at io.undertow.security.handlers.AbstractSecurityContextAssociationHandler.handleRequest(AbstractSecurityContextAssociationHandler.java:43)
	at io.undertow.server.handlers.PredicateHandler.handleRequest(PredicateHandler.java:43)
	at io.undertow.servlet.handlers.SendErrorPageHandler.handleRequest(SendErrorPageHandler.java:52)
	at io.undertow.server.handlers.PredicateHandler.handleRequest(PredicateHandler.java:43)
	at io.undertow.servlet.handlers.ServletInitialHandler.handleFirstRequest(ServletInitialHandler.java:276)
	at io.undertow.servlet.handlers.ServletInitialHandler$2.call(ServletInitialHandler.java:135)
	at io.undertow.servlet.handlers.ServletInitialHandler$2.call(ServletInitialHandler.java:132)
	at io.undertow.servlet.core.ServletRequestContextThreadSetupAction$1.call(ServletRequestContextThreadSetupAction.java:48)
	at io.undertow.servlet.core.ContextClassLoaderSetupAction$1.call(ContextClassLoaderSetupAction.java:43)
	at io.undertow.servlet.handlers.ServletInitialHandler.dispatchRequest(ServletInitialHandler.java:256)
	at io.undertow.servlet.handlers.ServletInitialHandler.handleRequest(ServletInitialHandler.java:176)
	at io.undertow.server.handlers.HttpContinueReadHandler.handleRequest(HttpContinueReadHandler.java:69)
	at io.undertow.server.handlers.PredicateHandler.handleRequest(PredicateHandler.java:43)
	at runwar.undertow.WelcomeFileHandler.handleRequest(WelcomeFileHandler.java:49)
	at io.undertow.server.handlers.PathHandler.handleRequest(PathHandler.java:104)
	at runwar.undertow.SiteDeployment$1.handleRequest(SiteDeployment.java:169)
	at io.undertow.predicate.PredicatesHandler.handleRequest(PredicatesHandler.java:141)
	at io.undertow.server.handlers.DisallowedMethodsHandler.handleRequest(DisallowedMethodsHandler.java:62)
	at io.undertow.predicate.PredicatesHandler.handleRequest(PredicatesHandler.java:113)
	at io.undertow.server.handlers.encoding.EncodingHandler.handleRequest(EncodingHandler.java:72)
	at runwar.undertow.LifecyleHandler.handleRequest(LifecyleHandler.java:148)
	at runwar.undertow.SiteDeployment$4.handleRequest(SiteDeployment.java:360)
	at io.undertow.server.Connectors.executeRootHandler(Connectors.java:393)
	at io.undertow.server.HttpServerExchange$1.run(HttpServerExchange.java:859)
	at org.jboss.threads.ContextHandler$1.runWith(ContextHandler.java:18)
	at org.jboss.threads.EnhancedQueueExecutor$Task.run(EnhancedQueueExecutor.java:2513)
	at org.jboss.threads.EnhancedQueueExecutor$ThreadBody.run(EnhancedQueueExecutor.java:1538)
	at org.xnio.XnioWorker$WorkerThreadFactory$1$1.run(XnioWorker.java:1282)
	at java.base/java.lang.Thread.run(Thread.java:1575)
```

### Additional log info on server startup

```
[INFO ] ESAPI: WARNING: System property [org.owasp.esapi.opsteam] is not set
[INFO ] ESAPI: WARNING: System property [org.owasp.esapi.devteam] is not set
[INFO ] ESAPI: Attempting to load ESAPI.properties via file I/O.
[INFO ] ESAPI: Attempting to load ESAPI.properties as resource file via file I/O.
[INFO ] ESAPI: Not found in 'org.owasp.esapi.resources' directory or file not readable: /Users/psarin/WebStormProjects/boxlang-test/ESAPI.properties
[INFO ] ESAPI: Not found in SystemResource Directory/resourceDirectory: .esapi/ESAPI.properties
[INFO ] ESAPI: Not found in 'user.home' (/Users/psarin) directory: /Users/psarin/esapi/ESAPI.properties
[INFO ] ESAPI: Loading ESAPI.properties via file I/O failed. Exception was: java.io.FileNotFoundException
[INFO ] ESAPI: Attempting to load ESAPI.properties via the classpath.
[INFO ] ESAPI: SUCCESSFULLY LOADED ESAPI.properties via the CLASSPATH from '/ (root)' using class loader for DefaultSecurityConfiguration class!
[INFO ] ESAPI: SecurityConfiguration for Validator.ConfigurationFile.MultiValued not found in ESAPI.properties. Using default: false
[INFO ] ESAPI: Attempting to load validation.properties via file I/O.
[INFO ] ESAPI: Attempting to load validation.properties as resource file via file I/O.
[INFO ] ESAPI: Not found in 'org.owasp.esapi.resources' directory or file not readable: /Users/psarin/WebStormProjects/boxlang-test/validation.properties
[INFO ] ESAPI: Not found in SystemResource Directory/resourceDirectory: .esapi/validation.properties
[INFO ] ESAPI: Not found in 'user.home' (/Users/psarin) directory: /Users/psarin/esapi/validation.properties
[INFO ] ESAPI: Loading validation.properties via file I/O failed.
[INFO ] ESAPI: Attempting to load validation.properties via the classpath.
[INFO ] ESAPI: SUCCESSFULLY LOADED validation.properties via the CLASSPATH from '/ (root)' using class loader for DefaultSecurityConfiguration class!
```

