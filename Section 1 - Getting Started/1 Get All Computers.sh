#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -su "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers