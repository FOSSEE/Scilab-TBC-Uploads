//Chapter 18, Problem 4
clc;
t=12e-3;                                           //time constant
v=10;                                             //supply voltage
t1=7e-3;                                         //time period of capacitor
C=0.5e-6;                                        //capacitance
R=t/C;                                           //calculating resistance
vc=v*(1-exp(-t1/t));                            //calculating capacitor voltage
printf("(a) Resistor = %d K.ohm\n\n",R/1000);
printf("(b) Capacitor voltage = %f V",vc);
