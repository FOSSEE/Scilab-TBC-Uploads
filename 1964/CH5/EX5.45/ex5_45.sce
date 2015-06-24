//Chapter-5, Example 5.45, Page 210
//=============================================================================
clc
clear
//INPUT DATA
Vl=415;//voltage in volts
Z=(4+((%i)*6));//impedance in each phase in ohm
//CALCULATIONS
Ip=Vl/Z;//current in each phase in A
ip1=abs(Ip);//magnitude of Ip
Il=(sqrt(3))*(ip1);//line current in A
phi=atan((imag(Ip)/real(Ip)))
P=(sqrt(3))*Vl*Il*cos(phi);//power supplied in W
mprintf("Thus power supplied is %d W",P);
//note:the cosfunction of scilab and calculator will differ slightly
//=================================END OF PROGRAM======================================================================================================
