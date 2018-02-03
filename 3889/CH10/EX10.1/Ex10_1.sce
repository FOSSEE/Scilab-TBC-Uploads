//Example 10.1
//page 655
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator design using Bode Plots
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
w=poly(0,'w')
G=1/(s*(s+1))
Kv=10
pm=45 //degrees
K=Kv/horner(s*G,0)
G1=syslin('c',K*G)
[gm,frg]=g_margin(G1)

[pm0,frp]=p_margin(G1)
//Finding extra phase lead required
phi=pm-pm0+3
alpha= (1-sind(phi))/(1+sind(phi))
gain_uncomp=-20*log(1/(sqrt(alpha)))
wc=4.16 //New gain crossover frequency
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
f=figure()
black([G1;Gc ],0.01,100,["Plant";"Plant and Lead Compensator"]);
a=gca();
a.parent.background=8; 
Leg=a.children(1);
Leg.legend_location="in_lower_right";
nicholschart(colors=color('light gray')*[1 1])
 
 

