//Chapter-5, Example 5.17, Page 176
//=============================================================================
clc
clear
//INPUT DATA
L=10;//inductance in milliHenry
C=5;//capacitor in uf
phi=50;//phase in degrees-------->lagging
f=500;//frequency in hz
V=200;//supply voltage in volts
//CALCULATIONS
Xc=1/(2*%pi*f*C*10^-6);//Capacitive reactance in ohms
Xl=(2*%pi*f*L*10^-3);//inductive reactance in ohms
R=(Xc-Xl)/(tan(phi*%pi/180));//resistance in ohms
Z=sqrt((R)^2+(Xc-Xl)^2);//impedance in ohms
I=V/Z;//current in A
Vr=(I)*(R);//voltage across resistance
Vl=(I)*(Xl);//voltage across inductance
Vc=(I)*(Xc);//voltage across capacitance
mprintf("Thus voltages across resistance,inductance,capacitance are %3.2f volts,%3.2f volts,%3.2f volts respectively,",Vr,Vl,Vc);
//=================================END OF PROGRAM======================================================================================================

;
