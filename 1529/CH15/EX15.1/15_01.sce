//Chapter 15, Problem 1
clc;
f1=50;                          //frequency in hertz
L1=0.32;                        //inductance
xl=124;                         //reactance
f2=5000;                        //frequency in hertz
Xl=2*%pi*f1*L1;                 //inductive reactance
L=xl/(2*%pi*f2);                //inductance
printf("(a) Inductive reactance,\n Xl = %.1f ohm\n\n",Xl);
printf("(d) Inductance,\n L = %.3f mH\n\n",L*1000);
