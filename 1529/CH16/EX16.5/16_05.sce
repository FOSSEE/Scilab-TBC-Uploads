//Chapter 16, Problem 5
clc;
L=120e-3;                    //inductance in henry
C=25e-6;                    //capacitance in farad
V=100;                          //voltage
f=150;                      //frequency in hertz
Xl=2*%pi*f*L;                   //inductive reactance
Xc=1/(2*%pi*f*C);               //capacitive reactance
Il=V/Xl;                        //current flowing in the inductor
Ic=V/Xc;                        //current flowing in the capacitor
I=Ic-Il;
Z=V/I;
P=V*I*cos(90*%pi/180);
printf("(a) Branch current,\n Il = %.3f A\nIc = %.3f A\n\n",Il,Ic);
printf("(b) Supply current = %.3f A\nCurrent lags the supply voltage V by 90deg from Fig 16.4(i)",I);
printf("(c) Circuit impedance Z = %.3f ohm\n\n",Z);
printf("(d) Power consumed P = %d W",P);
