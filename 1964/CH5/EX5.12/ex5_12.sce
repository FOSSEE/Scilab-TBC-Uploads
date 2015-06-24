//Chapter-5, Example 5.12, Page 170
//=============================================================================
clc
clear
//INPUT DATA
C=50;//capacitance in uf
R=100;//resistance in ohms
V=200;//supply voltage in volts
f=50;//freq in hz
//CALCULATIONS
Xc=1/(2*%pi*f*C*10^-6);//capacitive reactance in ohms
Z=R-((%i)*Xc);//impedance in ohms
disp(Z);
z1=sqrt((R)^2+(Xc)^2);
theta=atan(Xc/R);
pf=cos(theta);//powerfactor
I=V/z1;//current in A
P=V*I*pf;//power in Watts
mprintf("Thus current,power factor,power are % 1.2f A ,%1.3f ,%d W respectively",I,pf,P);
//=================================END OF PROGRAM======================================================================================================

;
