//Chapter 16, Problem 10
clc;
L=100e-3;                   //inductance in henry
R=800;                         //resistance in ohm
f=5000;                         //frequency
V=12;                        //voltage
w=2*%pi*f;
C=(L*(w^2+(R^2/L^2)))^-1;        //capacitance in farad
Xl=2*%pi*f*L;                 //inductive reactance
Rd=L/(R*C);                     //dynamic resistance
Ir=V/Rd;                       //current at resonance
Q=Xl/R;                         //circuit Q-factor at resonance
printf("(a) capacitance of the capacitor, = %f uF\n\n",C*10^6);
printf("(b) Dynamic resistance Rd = %.2f k.ohm\n\n",Rd/1000);
printf("(c) supply current Ir = %.3f mA\n\n",Ir*1000);
printf("(d) Q factor of circuit = %.2f",Q);
