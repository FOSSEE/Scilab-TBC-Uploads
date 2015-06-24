//Chapter 1,Example 1.6,Pg 1.11
clc;
R10=80 //Resistance at 10 degrees Celsius
R60=96.6 //Resistance at 60 degrees Celsius
disp("R10=R0(1 + 10a0)")
disp("R60=R0(1 + 60a0)")
disp("Divide both the equations")
disp("96.6/80 = (1 +60a0)/(1+10a0)")
a0=(96.6-80)/(4800-966)
at=a0/(1+a0*60)
printf("\n Temp coeff at 60 degrees= %1f  per degree C\n",at)
