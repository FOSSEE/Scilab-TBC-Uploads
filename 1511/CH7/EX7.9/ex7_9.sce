// Example 7.9 page no-424
clear
clc

Rc=4
Rb=40
Rs=10
hie=1.1
hfe=50
hre=0
hoe=0

Rcdash=Rc*Rb/(Rc+Rb)
R=Rs*Rb/(Rs+Rb)
Rm=-hfe*Rcdash*R/(R+hie)
Rm=floor(Rm)
printf("\nTransresistance Rm=%d k",Rm)
B=-1/(Rb)
D=1+B*Rm
Rmdash=Rm/D
Avdash=Rmdash/Rs
Ri=R*hie/(R+hie)
Ridash=Ri/D
printf("\nBeta=%.3f mA/V\nRm_dash=%dk Ohm\nAv_dash=%f\nRi=%f k Ohm\nRi_dash=%fk Ohm",B,Rmdash,Avdash,Ri,Ridash)
