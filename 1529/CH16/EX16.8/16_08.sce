//Chapter 16, Problem 8
clc;
L=150e-3;                   //inductance in henry
C=40e-6;                      //capacitance in farad
V=50;                         //voltage
fr=(2*%pi)^-1*sqrt(1/(L*C));    //resonant frequency
Xc=1/(2*%pi*fr*C);              //capacitive reactance
Icir=V/Xc;                      //current circulating in L and C at resonance
printf("(a) Resonant frequency of the circuit = %.3f Hz\n\n",fr);
printf("(b) Current circulating in the capacitor and inductance at resonance = %.3f A",Icir);
