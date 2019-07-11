#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD -H "content-type: text/xml" $JAMF_PRO_URL/JSSResource/computers/id/1 -X PUT -d "<computer><general><site><name>New York</name></site></general></computer>"