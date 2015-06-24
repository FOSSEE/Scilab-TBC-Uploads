// To determine the kneepoint voltage and cross section of core
clear 
clc;
Ic=5*.25;// operating current(amp)
Vsec=5/1.25;// secondary voltage(V)
Bm=1.4;
f=50;
N=50;
V=15*Vsec;
A=60/(4.44*Bm*f*N);
mprintf(" the knee point must be slightly higher than =%.3f V\n",V);
mprintf("area of cross section=%.6f m_2\n",A);
