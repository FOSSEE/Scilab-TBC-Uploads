//Example 10.5
//page 668
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator design using Bode Plots
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
w=poly(0,'w')
G=1/((s)*(0.1*s+1)*(0.2*s+1))
wb=5
Kv=30
pm=40 //degrees
K=Kv/horner((s)*G,0)
G1=syslin('c',K*G)
[gm,frg]=g_margin(G1)
[pm0,frp]=p_margin(G1)
phi=-180+pm+5
wc=3 //New gain crossover frequency
Beta=10
Kc=K/Beta
z=wc/10
p=z/Beta
D=Kc*(((s+z)/(s+p)))
disp(D,'Lag Compensator=')
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
