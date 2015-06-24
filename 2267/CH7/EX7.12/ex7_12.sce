//Part A Chapter 7 Example 12
clc;
clear;
close;
p=4;//MPa
T1=300//degree C
T2=50//degree C
h1=2886.2;//kJ/kg(at 4 MPa & 300 degree C)
s1=6.2285;//kJ/kg.K(at 4 MPa & 300 degree C)
hf=209.33;//kJ/kg(at 50 degree C)
sf=0.7038;//kJ/kg.K(at 50 degree C)
hfg=2382.7;//kJ/kg(at 50 degree C)
sfg=7.3725;//kJ/kg.K(at 50 degree C)
x2=(s1-sf)/sfg;//dryness fraction
h2=hf+x2*hfg;//kJ/kg
W=h1-h2;//kJ/kg
disp("Steam turbine work is "+string(W)+" kJ/kg");
