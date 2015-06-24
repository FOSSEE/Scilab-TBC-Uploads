//Chapter 15, Problem 20
clc;
L=80e-3;                           //inductance in henry
C=0.25e-6;                           //capacitance in farad
R=12.5;                              //resistance in ohm
V=100;                              //supply voltage
fr=1/(2*%pi*sqrt(L*C));             //resonant frequency
I=V/R;
Vl=I*2*%pi*fr*L;
Vc=I*1/(2*%pi*fr*C);
Vm=Vl/V;
printf("(a) Resonant frequency = %.1f Hz\n\n",fr);
printf("(b) Current at resonance = %d A\n\n",I);
printf(" Q-factor of the circuit = %.3f",Vm);
