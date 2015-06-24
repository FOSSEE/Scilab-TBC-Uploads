//Chapter-5, Example 5.8, Page 167
//=============================================================================
clc
clear
//INPUT DATA
R=100;//resistance in ohms
C=50*10^-6;//capacitance in F
V=200;//voltage in Volts
f=50;//frequency in Hz
//Z=R-(%i)*(Xc)------>impedance
Xc=1/(2*%pi*f*C);//capacitive reactance in ohms
Z=sqrt((R)^2+(Xc)^2);//impedance in ohms
I=V/Z;//current in A
pf=R/Z;//power factor ------>cos(phi)---->leading
phi=acos(0.844);//phase angle in radians
phi=phi*180/%pi;//phase angle in degrees
Vr=(I)*(R);//voltage across resistor
Vc=(I)*(Xc);//votage across capacitor
mprintf("Thus impedance,current,powerfactor and phaseangle are %3.2f ohms,%1.2f A,%1.3f and %2.2f degrees respectively\n",Z,I,pf,phi);
mprintf("voltage across resistor and capacitor are %d V and %3.2f V respectively",Vr,Vc)

//=================================END OF PROGRAM======================================================================================================

;
