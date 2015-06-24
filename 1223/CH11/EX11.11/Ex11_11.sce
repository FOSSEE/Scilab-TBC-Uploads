clear;
clc;
//Example 11.11
Kn=0.5;
Iq=1;
Vt=0.026;
//transconductance of the MOSFET
gm=2*sqrt(Kn*Iq/2);
printf('\ntransconductance=%.3f mA/V\n',gm)
//transconductance of the bipolar transistor 
gm=Iq/(2*Vt);
printf('\ntransconductance=%.3f mA/V\n',gm)
