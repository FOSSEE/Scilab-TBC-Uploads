//Chapter 15, Problem 18
clc;
R=10;                              //resistance in ohm
L=125e-3;                           //inductance in henry
C=60e-6;                           //capacitance in farad
V=120;                              //supply voltage
fr=1/(2*%pi*sqrt(L*C));             //resonant frequency
I=V/R;
printf("Frequency F at which resonance occur = %.2f Hz\n\n",fr);
printf("Current I flowing at the resonant frequency = %d A",I);
