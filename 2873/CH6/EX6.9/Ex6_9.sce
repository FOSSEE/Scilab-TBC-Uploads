// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 9")
p1=1*1000;//initial pressure of steam in Kpa
V1=0.05;//initial volume of steam in m^3
x1=.8;//dryness fraction is 80%
V2=0.2;//final volume of steam in m^3
p2=p1;//constant pressure process
disp("work done during constant pressure process(W)=p1*(V2-V1)in KJ")
W=p1*(V2-V1)
disp("now from steam table at p1,vf=0.001127 m^3/kg,vg=0.19444 m^3/kg,uf=761.68 KJ/kg,ufg=1822 KJ/kg")
vf=0.001127;
vg=0.19444;
uf=761.68;
ufg=1822;
disp("so v1=vf+x1*vg in m^3/kg")
v1=vf+x1*vg
disp("now mass of steam(m)=V1/v1 in kg")
m=V1/v1
m=0.32097;//take m=0.32097 approx.
disp("specific volume at final state(v2)in m^3/kg")
disp("v2=V2/m")
v2=V2/m
disp("corresponding to this specific volume the final state is to be located for getting the internal energy at final state at 1 Mpa")
disp("v2>vg_1Mpa")
disp("hence state lies in superheated region,from the steam table by interpolation we get temperature as;")
disp("state lies between temperature of 1000 degree celcius and 1100 degree celcius")
disp("so exact temperature at final state(T)in K")
T=1000+((100*(.62311-.5871))/(.6335-.5871))
disp("thus internal energy at final state,1 Mpa,1077.61 degree celcius;")
disp("u2=4209.6 KJ/kg")
u2=4209.6;
disp("internal energy at initial state(u1)in KJ/kg")
disp("u1=uf+x1*ufg")
u1=uf+x1*ufg
disp("from first law of thermodynamics,Q-W=deltaU")
disp("so heat added(Q)=(U2-U1)+W=m*(u2-u1)+W in KJ")
Q=m*(u2-u1)+W











