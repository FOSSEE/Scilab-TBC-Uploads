//Chapter 21, Problem 26
clc;
V1=320;                     //primary voltage
V2=250;                     //secondary voltage
Rg=20e3;                    //rating
I1=Rg/V1;                   //primary current
I2=Rg/V2;                   //secondary current
I=I2-I1;                    //current in common part of the winding
printf("Primary current = %.1f A\n\nSecondary current = %d A\n\n\n",I1,I2);
printf("Hence current in common part of the winding = %.1f A",I);
