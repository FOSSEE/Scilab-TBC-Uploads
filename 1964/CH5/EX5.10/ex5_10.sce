//Chapter-5, Example 5.10, Page 169
//=============================================================================
clc
clear
//INPUT DATA
//given v=141.4*sin(314*t)
P=700;//power in Watts
pf=0.707;//powerfactor------>leading------>cos(phi)
Vm=141.4;//maximum value of supply voltage
//CALCULATIONS
Vr=Vm/(sqrt(2));//rms value of supply voltage
I=P/(Vr*pf);//current in A
Z=Vr/I;//impedance in ohms
R=(Z)*(pf);//resistance in ohms
phi=acos(pf*180/%pi);//angle in degrees
Xc=(Z)*(sin(phi));//reactance in ohms
C=1/(3.14*7.13);//Capacitance in F
mprintf("Thus resistance and capacitance are %1.2f ohms and %g F respectively",R,C);
//=================================END OF PROGRAM======================================================================================================

;
