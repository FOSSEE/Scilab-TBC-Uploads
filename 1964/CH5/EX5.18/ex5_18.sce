//Chapter-5, Example 5.18, Page 176
//=============================================================================
clc
clear
//INPUT DATA
L=5;//inductance in Henry
f=50;//frequency in hz
V=230;//supply voltage in volts
R=2;//resitance in ohms
V1=250;//voltage across coil in V
//CALCULATIONS
Xl=(2*%pi*f*L);//inductive reactance in ohms
Z1=sqrt((R)^2+(Xl)^2);//impedance of coil in ohms
I=V1/Z1;//current in A
Z=V/I;//total impedance in ohms
//Z=sqrt((R)^2+(Xl-Xc)^2) and solving for Xc
Xc=poly(0,"Xc");
p=(Xc^2)-3141.58*(Xc)+378004
roots2 = roots (p);
r2 = roots2 (2);
//Xc cannot be greater than Z
C=1/(2*%pi*f*r2);//capacitance in F
mprintf("Thus value of C that must be present suct that voltage across coil is 250 volts is %g F respectively,",C);
//=================================END OF PROGRAM======================================================================================================

;
