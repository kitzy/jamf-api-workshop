#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD -H "content-type: text/xml" $JAMF_PRO_URL/JSSResource/categories/id/0 -X POST -d "<category><name>Productivity</name><priority>1</priority></category>"