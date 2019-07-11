#!/bin/bash

#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

# Get machine serial number
serialNumber=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')

# Get computer ID from serial number
jamfID=$(curl -su $JAMF_PRO_USERNAME:$JAMF_PRO_PASSWORD -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/serialnumber/$serialNumber | xmllint --xpath '/computer/general/id/text()' -)

# Echo the ID
echo $jamfID