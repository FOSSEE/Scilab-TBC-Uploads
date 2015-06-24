//Chapter 3
//Example 3.2
//page 88
//To claculate the capacitance to neutral and charging current of a three phase transmission line
clear;clc;
d=350;    //distance between adjacent lines
r=1.05/2;     //radius of the conductor
v=110e3;    //line voltage;
f=50;

Deq=(d*d*2*d)^(1/3);   //GMD or equivalent

Cn=(0.0242/log10(Deq/r));

Xn=1/(2*%pi*f*Cn*10^(-6));   // Cn is in uF hence we add 10^6 while printing

Ic=(v/sqrt(3))/Xn;

printf("\nCapacitance to neutral is = %f uF/km\n\n",Cn);
printf("Capacitive rectance of the line is = %f ohm/km to neutral\n\n",Xn);
printf("Charging Current = %0.2f A/km\n\n",Ic);