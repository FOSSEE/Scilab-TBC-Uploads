//Chapter-5, Example 5.31, Page 196
//=============================================================================
clc
clear
//INPUT DATA
R=10;//resistance in ohms
L=10;//inductance in milli henry
C=1;//capacitance in uF
V=200;//applied voltage in volts
//CALCULATIONS
fr=1/(2*%pi*(sqrt(L*C*10^-3*10^-6)));//resonant frequency in hz
I0=V/(R);//current at resonance in A
Vr=I0*R;//voltage across resistance in volts
Xl=2*%pi*fr*L*10^-3;//inductance in ohms
Vl=I0*Xl;//voltage across inductor in volts
Xc=inv(2*%pi*fr*C*10^-6);//capacitance in ohms
Vc=I0*Xc;//voltage across capacitor in volts
wr=2*%pi*fr//angular resonant frewuency in rad/sec
Q=(wr*L*10^-3)/(R);//quality factor
Bw=(fr/Q);//bandwidth in hz
mprintf("Thus resonant frequency and current are %4.2f hz and %d A respectively\n",fr,I0);
mprintf("voltages across resistance,inductance and capacitance are %d V,%d V and %d V respectively\n",Vr,Vl,Vc);
mprintf("bandwidth and quality factor are %3.2f hz and %d respectively",Bw,Q);
//=================================END OF PROGRAM======================================================================================================
