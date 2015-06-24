//Calculate the appox. efficiency of each machine
//Chapter 2
//Example 2.32
//page 149
clear;
clc; 
disp("Example 2.32")
Ig=25;...............//current of generator in amperes
I=30;...................//current in motor in amperes
Il=I-Ig;..............//current in amperes
Ra=0.25;................//resistance in ohms
Gl=((Ig)^2)*Ra;................//loss in generator in watt
M=((I)^2)*Ra;....................//loss in motor in watt
T=Gl+M;...................//total loss in watt
V=100;.............//voltage in volts
P=V*Il;...............//power supplied from mains in watt
L=P-T;..................//iron,friction and windages losses in the two machines in ohms
l=L/2;...................//iron,friction and windages losses in each machines in ohms
IP=I*V;....................//input
Eff=((IP-M-l)/IP)*100;
printf("Efficiency of the motor=%fpercent",Eff)
OP=Ig*V;.................//output
Effi=((OP)/(OP+Gl+l))*100;
printf("\nEfficiency of the generator=%fpercent",Effi)