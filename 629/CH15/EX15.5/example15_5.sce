clear
clc
//Example 15.5 DISCHARGE USING CHEZY EQUATION
n=0.015;
l=10; //width[ft]
y=6; //depth[ft]
Rh=l*y/(l+2*y)
So=0.0016; //channel slope
A=l*y //area[ft^2]
//Discharge
Q=1.49*A*Rh^(2/3)*So^(1/2)/n //[cfs]
printf("\nThe discharge in the concrete channel = %.f cfs.\n",Q)