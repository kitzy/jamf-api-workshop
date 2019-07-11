#!/bin/bash

JAMF_PRO_URL=""
JAMF_PRO_USERNAME=""
JAMF_PRO_PASSWORD=""

curl -su "$JAMF_PRO_USERNAME":"$JAMF_PRO_PASSWORD" -H "accept: text/xml" $JAMF_PRO_URL/JSSResource/computers/id/1 -o /tmp/computer.xml

COMPUTER_MODEL=$(xmllint --xpath '/computer/hardware/model/text()' /tmp/computer.xml)

COMPUTER_SERIAL=$(xmllint --xpath '/computer/general/serial_number/text()' /tmp/computer.xml)

COMPUTER_ASSIGNED_USER=$(xmllint --xpath '/computer/location/username/text()' /tmp/computer.xml)

echo $COMPUTER_MODEL $COMPUTER_SERIAL $COMPUTER_ASSIGNED_USER

rm /tmp/computer.xml