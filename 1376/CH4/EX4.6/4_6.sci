//4.6
clc;
p=200.7;
q=400;
S=200.05*10^-6;
P=200.5;
Q=400;
r=1400*10^-6;
X=((P*S/Q)+((q*r)/(p+q))*((P/Q)-(p/q)))*10^6;
printf("Unknown resistance=%.2f micro-ohm",X)
