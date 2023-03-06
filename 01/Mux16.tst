### VLAN DATABASE

vlan 11
name Frontend
vlan 12
name Backend
vlan 13
name Finance
vlan 14
name Admin
vlan 15
name Database
vlan 16
name UIUX
vlan 17
name DevOps
exit


### Assign IP to Each VLAN to MLS0

int vlan 11
no shutdown
ip address 192.0.0.1 255.255.128.0
exit
int vlan 12
no shutdown
ip address 192.0.128.1 255.255.128.0
exit
int vlan 13
no shutdown
ip address 192.1.0.1 255.255.128.0
exit
int vlan 14
no shutdown
ip address 192.1.128.1 255.255.128.0
exit
int vlan 15
no shutdown
ip address 192.2.0.1 255.255.128.0
exit
int vlan 16
no shutdown
ip address 192.2.128.1 255.255.128.0
exit
int vlan 17
no shutdown
ip address 192.3.0.1 255.255.128.0
exit
ip routing

### Configure Trunk MLS

interface ra gig1/0/1-24
switchport mode trunk
exit

### Configure Trunk + Add VLAN to Switches

interface fastEthernet 0/1 
switchport mode trunk
exit
vlan 11
name Frontend
vlan 12
name Backend
vlan 13
name Finance
vlan 14
name Admin
vlan 15
name Database
vlan 16
name UIUX
vlan 17
name DevOps
exit

### Configure Access to VLAN 

Example

interface fastEthernet0/1
switchport access vlan 13
exit
interface fastEthernet1/1
switchport access vlan 13
exit
interface fastEthernet2/1
switchport access vlan 13
exit
interface fastEthernet4/1
switchport access vlan 14
exit
interface fastEthernet5/1
switchport access vlan 14
exit
interface fastEthernet6/1
switchport access vlan 14
exit