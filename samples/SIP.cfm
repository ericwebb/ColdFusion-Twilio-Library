    <CFContent type="text/xml">
    <cfsetting showdebugoutput="no">   

    <cfset r = REQUEST.TwilioLib.newResponse() />
    <cfset r.say(body="Please hold while we connect your call via SIP", voice="man") />
    <cfset r.dial(action="http://urlhere", method="GET")/>
    <cfset r.sipper(sip="sip:123@127.0.0.1", method="GET", childOf="dial")/>
    
    <cfoutput>#r.getResponseXml()#</cfoutput>
