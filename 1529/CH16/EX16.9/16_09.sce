//Chapter 16, Problem 9
clc;
L=0.20;                   //inductance in henry
R=60;                         //resistance in ohm
C=20e-6;                     //capacitance in farad
V=20;                        //voltage
fr=(2*%pi)^-1*sqrt((1/(L*C))-(R^2/L^2));
Xl=2*%pi*fr*L;                 //inductive reactance
Rd=L/(R*C);                     //dynamic resistance
Ir=V/Rd;                        //current at resonance
Q=Xl/R;                         //circuit Q-factor at resonance
printf("(a) Resonant frequency of the circuit = %.2f Hz\n\n",fr);
printf("(b) Dynamic resistance Rd = %.2f ohm\n\n",Rd);
printf("(c) Current at resonance Ir = %.2f A\n\n",Ir);
printf("(d) Q factor of circuit = %.2f",Q);
