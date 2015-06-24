//Chapter 16, Problem 2
clc;
V=240;                           //voltage
R=80;                          //resistance in ohm
f=50;                       //frequency in hertz
C=30e-6;                    //capacitance in farad
Ir=V/R;                         //current flowing in the resistor
Xc=1/(2*%pi*f*C);               //capacitive reactance
Ic=V/Xc;                        //current flowing in the capacitor
I=sqrt(Ir^2+Ic^2);              //supply current
phi=atan(Ic/Ir);
Z=V/I;                              //impedance
P=V*I*cos(phi);                     //power consumed
S=V*I;                              //apparent power,
printf("(a)  Current flowing in the resistor = %d A\n\tCurrent flowing in the capacitor = %.3f A\n\n",Ir,Ic);
printf("(b) Supply current = %.3f A\n\n",I);
printf("(c) Circuit phase angle = %.2f deg (leading)\n\n",phi*(180/%pi));
printf("(d) Circuit impedance = %.2f ohm\n\n",Z);
printf("(e) Power consumed = %d W\n\n",P);
printf("(f) Apparent power = %.1f VA",S);
