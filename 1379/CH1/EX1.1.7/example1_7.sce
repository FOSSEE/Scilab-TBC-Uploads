

//exapple 1.7 
clc; funcprot(0);
// Initialization of Variable
rho=990;
mu=5.88/10000;
g=9.81;
pi=3.14;
temp=46+273
e=1.8/10000//absolute roughness
Q=4800/1000/3600;
l=155;
h=10.5;
d=0.038;
delh=1.54//head loss at heat exchanger
effi=0.6//efficiency
//calculations
//part 1
u=Q*4/pi/d^2;
Re=rho*d*u/mu;
rr=e/d;//relative roughness
//from moody's diagram
phi=0.0038//friction factor
alpha=1//constant
leff=l+h+200*d+90*d;
Phe=g*delh//pressure head lost at heat exchanger
W=u^2/2/alpha+Phe+g*h+4*phi*leff*u^2/d;//work done by pump
G=Q*rho;//mass flow rate
P=W*G;//power required by pump
Pd=P/effi//power required to drive pump
disp(Pd/1000,"power required to drive pump in (kW)");
//part 2
P2=(-u^2/2/alpha+W)*rho;
disp(P2/1000,"The gauge pressure in (kPa):")


