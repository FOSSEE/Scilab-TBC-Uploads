//Chapter-5, Example 5.42, Page 209
//=============================================================================
clc
clear
//INPUT DATA
V1=400;//voltage in volts
Z1=(3+((%i)*4));//impedance in ohms
//CALCULATIONS
//in star connected system,phase voltage=(line voltage)
Ep=V1/(sqrt(3));//voltage in volts
Ip=Ep/Z1;//current in A
ip1=abs(Ip);//line current in A
theta=atan((imag(Ip)/real(Ip)));
Pt=sqrt(3)*V1*ip1*cos(theta);//total power consumed in load in W
mprintf("Thus total power consumed in load is %f W",Pt);
//note:for line current the answer given is 46.02A instead of 46.2 A and hence total power consumed changes
//=================================END OF PROGRAM======================================================================================================
