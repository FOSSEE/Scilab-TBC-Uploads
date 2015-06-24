//Chapter-5, Example 5.11, Page 169
//=============================================================================
clc
clear
//INPUT DATA
V=200;//supply voltage in volts
f=50;//freq in hz
P=7000;//power in Watts
Vr=130;//volatge across resistor in volts
P=7000;//power in Watts
//CALCULATIONS
R=((Vr)^2)/P;//resistance in ohms
I=Vr/R;//current in A
Z=V/I;//total impedance in ohms
Xc=sqrt((Z)^2-(R)^2);
C=1/(2*%pi*f*Xc);//Capacitance in F
pf=R/Z;//power factor------>leading
phi=acos(pf);//angle in radians
phi=phi*180/%pi;//angle in degrees
Vm=V*sqrt(2);//maximum value of voltage
//voltage equation v=Vm*sin(2*%pi*f*t)------>282.84*sin(314.16*t)
//current leads voltage by phi
//current equation ------>i=76.155*sin(314.16*t+phi)
mprintf("Thus current,resistance,p.f,capacitance,impedance are %2.2f A ,%1.2f ohms,%2.1f ,%g F and %1.2f ohms respectively",I,R,pf,C,Z);
//=================================END OF PROGRAM======================================================================================================

;
