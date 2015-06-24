//Example 19.1
clc
s=poly(0,'s');
syms tauI Kc
Gc=1+1/(tauI*s);
g1=1/(s+1);
//g2=exp(-s);
//we can write exp(-s) as (2-s)/(2+s).Therefore,
g2=(2-s)/(2+s);
G=g1*g2;
G=syslin('c',G)
Gp=Kc*Gc*G
Gs=Gp/(1+Gp)//Overall transfer function
//Ziegler Nicholas method
scf(1);
clf
bode(G)
show_margins(G)
//From bode diagrams we get
wc0=2.03
Kcu=2.26
Pu=2*%pi/wc0
//Since Gc is a PI controller, by Z-N rules
Kc=0.45*Kcu
tauI=Pu/1.2
//Cohen-Coon method
//Comaparing G with Eq.(19.6), we get
T=1;
Td=1;
Kp=1;
Kc=T*(0.9+Td/(12*T))/(Kp*Td)
tauI=Td*(30+3*Td/T)/(9+20*Td/T)
