// to find the capacitance to compensate a probe and input capacitance
//example 9-9 in page 267
clc;
//data given
Ci=30D-12;// input capacitance in farad
Ccc=100D-12;// coaxial cable capacitance in farad
R1=9e+6; Ri=1e+6;// resistances in ohm
//calculation
C2=Ccc+Ci;// capacitance in farad
C1=C2*Ri/R1;// capacitance in farad
printf("C1=%.1f pF\n",C1*10^12);
printf("The probe input capacitance as seen from the source=%d pF",(C1*C2)*10^12/(C1+C2))
//result
//C1=14.4 pF
//The probe input capacitance as seen from the source=13 pF 