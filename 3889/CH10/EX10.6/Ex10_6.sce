//Example 10.6
//page 672
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator design using Bode Plots
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
w=poly(0,'w')
G=1/((s)*(0.1*s+1)*(0.2*s+1))
wb=12
Kv=30
pm=50 //degrees
K=Kv/horner((s)*G,0)
G1=syslin('c',K*G)
[gm,frg]=g_margin(G1)
[pm0,frp]=p_margin(G1)

//Design of lag compensation part
phi=-180+pm+5
wc=2.1 //New gain crossover frequency
Beta=10
Kc=K/Beta
z=wc/2
p=z/Beta
//Design of lead compensation part
alpha=1/Beta
phi1= asin(((1-alpha)/(1+alpha)))
wc1=6.5
z1=wc1*sqrt(alpha)
p1=wc1/sqrt(alpha) 
Kc=Kc/sqrt(alpha)
D=Kc*((((s+z)*(s+z1))/((s+p)*(s+p1))))
disp(D,'Lead-Lag Compensator=')
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
black([G1;Gc ],0.01,100,["Plant";"Plant and Lag Compensator"]);
a=gca();
a.parent.background=8; 
Leg=a.children(1);
Leg.legend_location="in_lower_right";
nicholschart(colors=color('light gray')*[1 1])
