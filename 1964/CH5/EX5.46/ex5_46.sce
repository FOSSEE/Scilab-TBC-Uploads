//Chapter-5, Example 5.46, Page 210
//=============================================================================
clc
clear
//INPUT DATA
Vl=400;//voltage in volts
Il=20;//current in A
f=50;//freq in hz
pf=0.3//power factor
//CALCULATIONS
Ip=Il/sqrt(3);//phase current in A
Z=Vl/Ip;//impedance in each phase in ohms
phi=acos(0.3);//angle in radians
Zb=Z*(cos(phi)+(%i)*sin(phi));//impedance connected in each phase
mprintf("Thus impedance connected in each phase in ohms");
disp(Zb);
//=================================END OF PROGRAM======================================================================================================
