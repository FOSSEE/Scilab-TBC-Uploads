//Chapter 5, Problem 11, Figure 5.21
clc;
R1=10;
R2=20;
R3=30;
V=240;
//Resistor connected in series
Rs=R1+R2+R3;
Is=V/Rs;
//Resistor connected in parallel
Z=(1/R1)+(1/R2)+(1/R3);
Rp=1/Z;
Ip=V/Rp;
printf("Supply current when resistor in series = %f A\n\n\n",Is);
printf("Supply current when resistor in parallel = %f A\n\n\n",Ip);
