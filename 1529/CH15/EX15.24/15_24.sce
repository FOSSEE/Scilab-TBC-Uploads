//Chapter 15, Problem 24
clc;
//from eqn i=250 sin ωt
Im=0.250;
R=5000;                     //resistance in ohm
I=Im*0.707;                 //rms current
P=R*I^2;                    //power
printf("Power dissipated in the resistor = %.1f W",P);
