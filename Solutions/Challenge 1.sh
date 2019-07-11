#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

COMPUTER_MODEL=$(curl -su "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/id/1 | xmllint --xpath '/computer/hardware/model/text()' -)

COMPUTER_SERIAL=$(curl -su "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/id/1 | xmllint --xpath '/computer/general/serial_number/text()' -)

COMPUTER_ASSIGNED_USER=$(curl -su "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/id/1 | xmllint --xpath '/computer/location/username/text()' -)

echo $COMPUTER_MODEL $COMPUTER_SERIAL $COMPUTER_ASSIGNED_USER