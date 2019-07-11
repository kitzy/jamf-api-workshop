#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

serialNumber=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')

jamfID=$(curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/serialnumber/$serialNumber | xmllint --xpath '/computer/general/id/text()' -)

curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD $JAMF_PRO_URL/JSSResource/fileuploads/computers/id/$jamfID -X POST -F name=@/var/log/jamf.log