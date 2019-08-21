---

title: Connecting to enterprise-WIFI via nmCLI

---

In order to connect to enterprise networks (not supported by nmtui)

---
#!/bin/bash

# To use:
# nmcli c s - list all configured connections
# nmcli c up <SSID>

nmcli connection add \
 type wifi con-name "NUS_STU_2-4GHz" ifname wlo1 ssid "<Network_SSID>" -- \
 wifi-sec.key-mgmt wpa-eap \
 802-1x.eap ttls \
 802-1x.phase2-auth pap \
 802-1x.identity "<Your_ID>" \
 802-1x.password "<Your_Password>"
---

You might have to remove or add different properties depending on your network.
To get properties you can use nmcli.