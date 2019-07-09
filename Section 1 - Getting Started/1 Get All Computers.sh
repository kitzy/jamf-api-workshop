#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -sku "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers