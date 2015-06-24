//Chapter 15, Problem 29
clc;
V=120;                              //voltage
f=50;                               //frequency in hertz
P=400;                              //power in watt
I=8;                                //current in ampere
R=P/I^2;                            //resistance in ohm
Z=V/I;                              //impedance
Xl=sqrt(Z^2-R^2);                   //inductive reactance
pf=P/(V*I);                         //power factor
phi=acos(pf);
printf("(a) Resistance R = %.2f ohm\n\n",R);
printf("(b) Impedance Z = %d ohm\n\n",Z);
printf("(c) Reactance = %.2f ohm\n\n",Xl);
printf("(d) Power factor = %.4f\n\n",pf);
printf("(e) Phase angle = %.2f deg (lagging)\n\n",phi*(180/%pi));
