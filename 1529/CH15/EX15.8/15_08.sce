//Chapter 16, Problem 8
clc;
L=0.20;                     //inductance
R=60;                        //resistance
C=20e-6;                     //capacitance
V=20;                       //supply voltage
fr=(2*%pi)^-1*sqrt((1/(L*C))-(R^2/L^2));
Xl=2*%pi*fr*L;              //inductive reactance
Rd=L/(R*C);
Ir=V/Rd;
Q=Xl/R;
printf("(a) Resonant frequency of the circuit = %f Hz\n\n",fr);
printf("(b) Dynamic resistance Rd = %f ohm\n\n",Rd);
printf("(c) Current at resonance Ir = %f A\n\n",Ir);
printf("(d) Q factor of circuit = %f",Q);
