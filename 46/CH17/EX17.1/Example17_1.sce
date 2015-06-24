//Example 17.1
clc
s=%s;
syms Kc
tau=1;
taum=1;
wC=1;
g1=Kc;
g2=1/(s+1);
g3=1/(s+1);
G1=g2*g3;
G1=syslin('c',G1)
G=g1*g2/.g3;
disp(G,'C(s)/R(s)=')
//This equation can be written in the form of Kc*(s+1)/((1+Kc)*(tau2^2*s^2+2*tau2*zeta2*s+1)
tau2=sqrt(1/(1+Kc))
zeta2=sqrt(1/(1+Kc))
clf
bode(G1)
show_margins(G1)
//To make the open loop gain 1 at w=4
phaseangle=-152//degrees
phasemargin=180+phaseangle//degrees
//At this phase margin, the gain margin is
A=0.062//gain margin
Kc=1/A
zeta2=dbl(zeta2)
