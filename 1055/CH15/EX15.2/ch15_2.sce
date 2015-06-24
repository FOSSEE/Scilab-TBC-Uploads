// To determine the rate of rise of restriking voltage
clear 
clc;
Vnl=132*sqrt(2)/sqrt(3);//peak value of peak to neutral voltage(kV)
Vr1=Vnl*.95;//recovery voltage (kV)
Vr=102.4*.916;// active recovery voltage(kV)
Vrmax=2*Vr;
fn=16*(10^3);
t=1/(2*fn);
RRRV=Vrmax*(10^-6)/t;
mprintf("rate of rise of restriking voltage, RRRV=%.0f kV/micro-sec",RRRV);
