clc
clear
//Initialization of variables
umax=62.2 //ft/s
r0=18 //in
e=0.0696 //in
r=6 //in
//calculations
Vs=umax/(8.5 + 5.75*log10(r0/e))
u=Vs*(8.5 + 5.75*log10(r/e))
//results
printf("Velocity = %.1f ft/s",u)
