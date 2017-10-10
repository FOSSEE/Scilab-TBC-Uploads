clear
clc
//Example 14.6 PUMP SELECTION USING SPECIFIC SPEED
g=32.2; //[ft/s^2]
n=1100/60; //in rps
h=600; //[ft]
Q=10; //[cfs]
//Specific speed
ns=n*Q^(1/2)/(g*h)^(3/4) 
//From fig 14.12,
printf("\nFor specific speed, ns= %.3f, radial flow pump is best choice.\n",ns)