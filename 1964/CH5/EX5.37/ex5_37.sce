//Chapter-5, Example 5.37, Page 198
//=============================================================================
clc
clear
//INPUT DATA
V=120;//source voltage in volts
R=50;//resistance in ohms
L=0.5;//inductance in Henry
C=50;//capacitance in uF
//CALCULATIONS
//at Resonance
fr=(1/(2*%pi*(sqrt(L*C*10^-6))));//resonant frequency in hz
I0=V/R;//current at resonance in A
Vl=(%i)*(I0*L);//voltage developed across inductor in volts
Vc=(-%i)*(I0*L);//voltage developed across capacitor in volts
Q=(inv(R))*(sqrt(L/(C*10^-6)));//quality factor
Bw=(fr)/(Q);//Bandwidth in Hz
//given resonance is to occur at 300 rad/sec,then
wr=300;//wr=(2*%pi*f*r)------->measured in Hz
//wr=inv(sqrt(L*Cn))
Cr=inv(L*(wr)^2);//capacitance required in uF
mprintf("Thus resonant frequency,current,quality factor and bandwidth are %2.1f Hz,%1.1f A,%d and %2.1f hz respectively\n",fr,I0,Q,Bw);
mprintf("New value of capacitance at 300 rad/sec is %g F",Cr)
//=================================END OF PROGRAM======================================================================================================
