//Chapter 21, Problem 6
clc;
N=10;                               //turns ratio
v1=2.5e3;                           //primary voltage
P=5000;                             //power
v2=v1/N;                            //secondary voltage
i2=P/v2;                            //secondary current
Rl=v2/i2;                           //resistance in ohm
i1=i2/N;                            //primary current
printf("(a) Full-load secondary current = %d A\n\n",i2);
printf("(b) Minimum value of load resistance = %.1f ohms\n\n",Rl);
printf("(c) Primary current = %d A\n\n",i1);
