#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD $JAMF_PRO_URL/JSSResource/categories/name/Productivity -X DELETE

