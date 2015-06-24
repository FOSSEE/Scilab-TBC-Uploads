// Chapter 12_The junction field effect transistor
//Caption_The MESFET-Channel length modulation
//Ex_8//page 573
Nd=3*10^15
eps=8.85*10^-14*11.7
L=10
ID1=4
VDSsat=0  //assume
VDS1=VDSsat+2
VDS2=VDSsat+2.5

delL2=10^4*(2*eps*(VDS2-VDSsat)/(e*Nd))^0.5   //change in length
delL1=10^4*(2*eps*(VDS1-VDSsat)/(e*Nd))^0.5   //change in length
//drain currents are
ID22=ID1*(L/(L-0.5*delL2))
ID11=ID1*(L/(L-0.5*delL1))
rds=(VDS2-VDS1)/(ID22-ID11)
printf('The small signal output resistance at the drain terminal due to channel length modulation effects is %1.1f kohm',rds)

