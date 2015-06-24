//Chapter 20, Problem 15
clc;
P1=8;                   //power 1 in watt
P2=4;                   //power 2 in watt
P=P1+P2;                //total input power
phi=atan(sqrt(3)*((P1-P2)/(P1+P2)));
pf=cos(phi);                //load power factor
printf("(a) Total input power = %d kW\n\n",P);
printf("(b) Power factor = %.3f ",pf);
