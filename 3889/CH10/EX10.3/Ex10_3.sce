//Example 10.3
//page 658
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator design using Bode Plots
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
w=poly(0,'w')
G=1/((s^2)*(0.2*s+1))
Ka=10
pm=35 //degrees
K=Ka/horner((s^2)*G,0)
G1=syslin('c',K*G)
[gm,frg]=g_margin(G1)
[pm0,frp]=p_margin(G1)
//Finding extra phase lead required
phi=pm-pm0+15
//As phi is large, we use 2 lead compensators in cascade
phi=phi/2
alpha= (1-sind(phi))/(1+sind(phi))
gain_uncomp=-20*log(1/(sqrt(alpha)))
wc=4.7 //New gain crossover frequency
z=wc*sqrt(alpha) //z=1/T
p=wc/sqrt(alpha) //p=1/(alpha*T)
Kc=K/alpha
D=Kc*(((s+z)/(s+p))^2)
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

