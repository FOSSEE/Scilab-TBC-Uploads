//Part A Chapter 7 Example 7
clc;
clear;
close;
p=0.15;//MPa
x=10/100;//quality
hf=467.11;//kJ/kg//at 0.15 MPa
hg=2693.6;//kJ/kg//at 0.15 MPa
vf=0.001053;//m^3/kg//at 0.15 MPa
vg=1.1593;//m^3/kg//at 0.15 MPa
sf=1.4336;//kJ/kg.K//at 0.15 MPa
sg=7.2233;//kJ/kg.K//at 0.15 MPa
hfg=hg-hf;//kJ/kg//
h=hf+x*hfg;//kJ/kg
disp("Enthalpy is "+string(h)+" kJ/kg");
vfg=vg-vf;//m^3/kg//
v=vf+x*vfg;//m^3/kg
disp("Specific volume is "+string(v)+" m^3/kg");
sfg=sg-sf;//kJ/kg.K
s=sf+x*sfg;//kJ/kg.K
disp("Entropy is "+string(s)+" kJ/kg.K");
