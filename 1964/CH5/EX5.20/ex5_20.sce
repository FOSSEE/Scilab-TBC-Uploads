//Chapter-5, Example 5.20, Page 182
//=============================================================================
clc
clear
//INPUT DATA
R=10;//resistance in ohms
L=0.1;//inductance in henry
f=50;//frequency in hz
//CALCULATIONS
Xl=(2*%pi*f*L);//inductive reactance in ohms
Z=R+((%i)*(Xl));//impedance in ohms
Y=inv(Z);//admittance in mho
disp(Y);
y=abs(Y);//admittance in mho
mprintf("admittance is %1.5f mho",y);
//=================================END OF PROGRAM======================================================================================================
