#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -sku $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD $JAMF_PRO_URL/JSSResource/fileuploads/computers/id/1 -X POST -F name=@/PATH/TO/FILE