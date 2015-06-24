//Chapter 15, Problem 30
clc;
V=100;                              //voltage
f=60;                              //frequency in hertz
P=100;                             //power in watt
pf=0.5;                        //power factor
I=P/(pf*V);                      //current in ampere
R=P/I^2;                            //resistance in ohm
Z=V/I;                            //impedance
Xc=sqrt(Z^2-R^2);                   //capacitive reactance
C=1/(2*%pi*f*Xc);                   //capacitance
phi=acos(pf);
printf("(a) Current I = %d A\n\n",I);
printf("(b) Phase angle = %d deg (leading)\n\n",phi*(180/%pi));
printf("(c) Resistance R = %d ohm\n\n",R);
printf("(d) Impedance Z = %d\n\n",Z);
printf("(e) Capacitance C = %.2f uF\n\n",C*10^6);
