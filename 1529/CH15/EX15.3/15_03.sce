//Chapter 15, Problem 3
clc;
f=50;                      //frequency in hertz
f2=20e3;                      //frequency in hertz
C=10e-6;                        //capacitance in farad
Xc=1/(2*%pi*f*C);               //capacitive reactance
Xc2=1/(2*%pi*f2*C);               //capacitive reactance
printf("(a) Capacitive reactance Xc = %.1f ohm\n\n",Xc);
printf("(b) Capacitive reactance Xc = %.3f ohm\n\n",Xc2);
printf("Hence as the frequency is increased from 50 Hz to 20 kHz, XC decreases from %.1f to %.3f (see Fig. 15.5)",Xc,Xc2);
