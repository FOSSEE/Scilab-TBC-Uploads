//Chapter 16, Problem 1
clc;
V=60;                           //voltage
R=20;                           //resistance in ohm
f=1000;                         //frequency in hertz
L=2.387e-3;                     //inductance in henry
Ir=V/R;                         //current flowing in the resistor
Xl=2*%pi*f*L;                   //inductive reactance
Il=V/Xl;                        //current flowing in the inductance
I=sqrt(Ir^2+Il^2);              //supply current from phasor diagram fig 16.1
phi=atan(Il/Ir);
Z=V/I;                          //impedance
P=V*I*cos(phi);                 //power consumed
printf("(a)  Current flowing in the resistor = %d A\n\tCurrent flowing in the inductance = %d A\n\n",Ir,Il);
printf("(b) Supply current = %d A\n\n",I);
printf("(c) Circuit phase angle = %.2f deg (lagging)\n\n",phi*(180/%pi));
printf("(d) Circuit impedance = %.1f ohm\n\n",Z);
printf("(e) Power consumed = %d W",P);
