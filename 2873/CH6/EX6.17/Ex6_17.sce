// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 17")
ms=40;//mass of steam in kg
mw=2.2;//mass of water in kg
p1=1.47;//pressure before throttling in Mpa
T2=120;//temperature after throttling in degree celcius
p2=107.88;//pressure after throttling in Kpa
Cp_sup=2.09;//specific heat of superheated steam in KJ/kg K
disp("consider throttling calorimeter alone,")
disp("degree of superheat(T_sup)in degree celcius")
disp("T_sup=T2-101.8")
T_sup=T2-101.8
disp("enthalpy of superheated steam(h_sup)in KJ/kg")
disp("h_sup=h+T_sup*Cp_sup")
disp("at 120 degree celcius,h=2673.95 KJ/kg from steam table")
h=2673.95;
h_sup=h+T_sup*Cp_sup
disp("now enthalpy before throttling = enthalpy after throttling")
disp("hf+x2*hfg=h_sup")
disp("here at 1.47 Mpa,hf=840.513 KJ/kg,hfg=1951.02 KJ/kg from steam table")
hf=840.513;
hfg=1951.02;
disp("so x2=(h_sup-hf)/hfg")
x2=(h_sup-hf)/hfg
disp("for seperating calorimeter alone,dryness fraction,x1=(ms-mw)/ms")
x1=(ms-mw)/ms
disp("overall dryness fraction(x)=(x1*x2)")
x=x1*x2
