// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 8")
x=.10;//quality is 10%
disp("at 0.15Mpa,from steam table;")
disp("hf=467.11 KJ/kg,hg=2693.6 KJ/kg")
hf=467.11;
hg=2693.6;
disp("and hfg=hg-hf in KJ/kg")
hfg=hg-hf
disp("vf=0.001053 m^3/kg,vg=1.1593 m^3/kg")
vf=0.001053;
vg=1.1593;
disp("and vfg=vg-vf in m^3/kg")
vfg=vg-vf
disp("sf=1.4336 KJ/kg,sg=7.2233 KJ/kg")
sf=1.4336;
sg=7.2233;
disp("and sfg=sg-sf in KJ/kg K")
sfg=sg-sf
disp("enthalpy at x=.10(h)in KJ/kg")
disp("h=hf+x*hfg")
h=hf+x*hfg
disp("specific volume,(v)in m^3/kg")
disp("v=vf+x*vfg")
v=vf+x*vfg
disp("entropy (s)in KJ/kg K")
disp("s=sf+x*sfg")
s=sf+x*sfg
