//Chapter 9, Problem 11
clc;
L=150*10^-3;
E=40;
//since the current is reversed, dI =6−(−6)=12A
dI=12;
//calculating change in time dt
dt=(L*dI)/E;
printf("Change in time dt = %f sec",dt);
