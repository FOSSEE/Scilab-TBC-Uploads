clc
//Example 7.7
printf("Given")
disp('i=12*sin(%pi*t/6),R=0.1 ohm,L=3H')
t=0:.1:6
i=12*sin(%pi*t/6),R=0.1;L=3;
//Let wL be the energy stored in the inductor
wL=0.5*L*i^2
plot(t,wL)
//From the above graph
wLmax=216;tmax=3;
printf("Maximum value at %d J at %d sec",wLmax,tmax)
//Let pR be the power dissipated in the resistor
pR=i^2*R
//Energy converted to heat in 6 sec interval in the resistor is 
syms s
wR=integ(14.4*(sin(%pi/6*s))^2,s,0,6)
disp(wR,'wR')
