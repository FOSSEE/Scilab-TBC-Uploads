//determine the voltage gain of this amplifier circuit using SPICE methods.
//Example 7.12 page no 215
clear
clc
gm=1.5*10^-3
rds=75*10^3
Rd=3*10^3       //kΩ
rds=75*10^3
vds=-(gm*rds*Rd)/(rds+Rd)
printf("\n The value of vds=%0.3f vgs",vds)
Vdsm=-1*vds      //V
idm=(gm+(Vdsm/rds))*1000   
printf("\n The value of idm=%0.3f mA",idm)
