// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 13")
disp("fron S.F.S.E on steam turbine;")
disp("W=h1-h2")
disp("initially at 4Mpa,300 degree celcius the steam is super heated so enthalpy from superheated steam or mollier diagram")
disp("h1=2886.2 KJ/kg,s1=6.2285 KJ/kg K")
h1=2886.2;
s1=6.2285;
disp("reversible adiabatic expansion process has entropy remaining constant.on mollier diagram the state 2 can be simply located at intersection of constant temperature line for 50 degree celcius and isentropic expansion line.")
disp("else from steam tables at 50 degree celcius saturation temperature;")
disp("hf=209.33 KJ/kg,sf=0.7038 KJ/kg K")
hf=209.33;
sf=0.7038;
disp("hfg=2382.7 KJ/kg,sfg=7.3725 KJ/kg K")
hfg=2382.7;
sfg=7.3725;
disp("here s1=s2,let dryness fraction at 2 be x2")
disp("x2=(s1-sf)/sfg")
x2=(s1-sf)/sfg
disp("hence enthalpy at state 2")
disp("h2=hf+x2*hfg in KJ/kg")
h2=hf+x2*hfg
disp("steam turbine work(W)in KJ/kg")
disp("W=h1-h2")
W=h1-h2
disp("so turbine output=W")
W
