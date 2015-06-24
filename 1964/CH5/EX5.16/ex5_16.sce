//Chapter-5, Example 5.16, Page 175
//=============================================================================
clc
clear
//INPUT DATA
R=10;//resistance in ohms
L=0.1;//inductance in Henry
C=150;//capacitor in uf
V=200;//voltage in V
f=50;//frequency in hz
//CALCULATIONS
Xc=1/(2*%pi*f*C*10^-6);//Capacitive reactance in ohms
Xl=(2*%pi*f*L);//inductive reactance in ohms
Z=R+((%i)*(Xl-Xc));//impedance in ohms
z1=sqrt((R)^2+(Xl-Xc)^2);//magnitude of Z
I=V/z1;//current in A
pf=R/z1;//power factor----->cos(phi)
//As Xl-Xc is inductive,pf is lagging
z2=sqrt((R^2)+(Xl)^2);//impedance of coil in ohms
Vl=I*(z2);//voltage across coil in volts
Vc=I*(Xc);//voltage across capacitor in volts
mprintf("Thus inductive reactance,capacitive reactance,impedance,current,powerfactor are %2.2f ohms,%2.2f ohms,%2.2f ohms,%d A,%1.1f respectively,",Xl,Xc,z1,I,pf);
//=================================END OF PROGRAM======================================================================================================

;
