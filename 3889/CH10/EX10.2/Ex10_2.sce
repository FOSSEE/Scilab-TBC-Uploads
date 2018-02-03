//Example 10.2
//page 657
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator design using Bode Plots
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
w=poly(0,'w')
G=1/(s^2)
zeta=0.45
pm=50 //degrees
K=1
G1=syslin('c',K*G)
[gm,frg]=g_margin(G1)
[pm0,frp]=p_margin(G1)
//Finding extra phase lead required
phi=pm-pm0
alpha= (1-sind(phi))/(1+sind(phi))
gain_uncomp=-20*log(1/(sqrt(alpha)))
wc=1.7 //New gain crossover frequency
z=wc*sqrt(alpha) //z=1/T
p=wc/sqrt(alpha) //p=1/(alpha*T)
Kc=K/alpha
D=Kc*(s+z)/(s+p)
disp(D,'Lead Compensator=')
Gc=syslin('c',G1*D)
f=figure()
bode(G1)
bode_asymp(G1)
title('Bode plot of uncompensated system')
a=gca();
a.parent.background=8; 
f=figure()
bode(Gc)
bode_asymp(Gc)
title('Bode plot of compensated system')
a=gca();
a.parent.background=8; 

 
 

