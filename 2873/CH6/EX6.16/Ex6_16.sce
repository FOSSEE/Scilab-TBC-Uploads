// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 16")
F=10;//force applied externally upon piston in KN
d=.2;//diameter in m
h=0.02;//depth to which water filled in m 
P_atm=101.3;//atmospheric pressure in Kpa
rho=1000;//density of water in kg/m^3
Q=600;//heat supplied to water in KJ
T=150;//temperature of water in degree celcius
disp("heating of water in vessel as described above is a constant pressure heating. pressure at which process occurs(p)=F/A+P_atm in Kpa")
disp("area(A)=%pi*d^2/4 in m^2")
A=%pi*d^2/4
disp("so p1=F/A+P_atm in Kpa")
p1=F/A+P_atm
disp("now at 419.61 Kpa,hf=612.1 KJ/kg,hfg=2128.7 KJ/kg,vg=0.4435 m^3/kg")
hf=612.1;
hfg=2128.7;
vg=0.4435;
disp("volume of water contained(V1)=%pi*d^2*h/4 in m^3")
V1=%pi*d^2*h/4
disp("mass of water(m)=V1*rho in kg")
m=V1*rho
disp("heat supplied shall cause sensible heating and latent heating")
disp("hence,enthalpy change=heat supplied")
disp("Q=((hf+x*hfg)-(4.18*T)*m)")
disp("so dryness fraction of steam produced(x)can be calculated as")
disp("so x=((Q/m)+4.18*T-hf)/hfg")
x=((Q/m)+4.18*T-hf)/hfg
disp("internal energy of water(U1)in KJ,initially")
h1=4.18*T;//enthalpy of water in KJ/kg
disp("U1=m*h1-p1*V1")
U1=m*h1-p1*V1
U1=393.5;//approx.
disp("finally,internal energy of wet steam(U2)in KJ")
disp("U2=m*h2-p2*V2")
disp("here V2=m*x*vg in m^3")
V2=m*x*vg
disp("hence U2=(m*h2)-p2*V2")
p2=p1;//constant pressure process
U2=(m*(hf+x*hfg))-p2*V2
U2=940.71;//approx.
disp("hence change in internal energy(U)=U2-U1 in KJ")
U=U2-U1
disp("work done(W)=p*(V2-V1)in KJ")
p=p1;
W=p*(V2-V1)

























