

//exapple 11.5 
clc; funcprot(0);
// Initialization of Variable
g=9.81;
pi=3.1428;
r=0.51;
e=0.48;//void ratio
rhos=2280;//density of glass
rho=1.204;//density of air
U=0.015;//velocity of water entering bed
L=7.32;
gam=1.4;//gamma
neta=0.7//efficiency
P4=1.013*10^5;
P1=P4;
v1=1/1.204;//volume 1
//calculation
P3=P4+g*(rhos-rho)*(1-e)*L;
P2=P3+0.1*85090;
v2=(P1*v1^gam/P2)^(1/gam);//vlume 2
W=1/neta*gam/(gam-1)*(P2*v2-P1*v1);//work done
v3=P2*v2/P3;//volume 3
M=U*pi*r^2/v3;//mass flow rate
P=M*W;
disp(P,"The power supplies to the blower in (W):");
