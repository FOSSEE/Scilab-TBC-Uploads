//Chapter-5, Example 5.14, Page 171
//=============================================================================
clc
clear
//INPUT DATA
V=200;//voltage in V
R=50;//resistance in ohms
L=0.5;//inductance in Henry
F=50;//freq in hz
//CALCULATIONS
Xl=2*%pi*F*L;//inductive reactance
Z=(R)+((%i)*Xl)//impedance
disp(Z);
z1=sqrt((R)^2+(Xl)^2);//magnitude
theta=atan(Xl/R);//angle in radians
I=V/z1;//current in A
P=V*I*cos(theta);//power supplied in W
//here capacitive reactance equals inductive reactance
//hence Xc=Xl
C=1/(2*%pi*F*Xl);//capacitance in uf
r=(V/I)-(R);//additional resistance to be added in series
mprintf("Thus current and power required are % 1.2f A and %2.2f W respectively\n",I,P);
mprintf("Thus additional resistance that neede to be connected in series with R and C to have same current at unity power factor is %1.1f ohms",r);
//=================================END OF PROGRAM======================================================================================================

;
