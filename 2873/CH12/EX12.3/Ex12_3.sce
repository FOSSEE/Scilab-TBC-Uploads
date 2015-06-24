// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 3")
k_insulation=0.3;//thermal conductivity of insulation in KJ/m hr oc
k_pipe=209;//thermal conductivity of pipe in KJ/m hr oc
T1=300;//temperature of inner surface of steam pipe in degree celcius
T3=50;//temperature of outer surface of insulation layer in degree celcius
r1=15*10^-2/2;//steam pipe inner radius without insulation in m
r2=16*10^-2/2;//steam pipe outer radius without insulation in m
r3=22*10^-2/2;//radius with insulation in m
m=0.5;//steam entering rate in kg/min
disp("here,heat conduction is considered in pipe wall from 1 to 2 and conduction through insulation between 2 and 3 of one dimentional steady state type.")
disp("Q=(T1-T3)*2*%pi*L/((1/k_pipe)*log(r2/r1)+(1/k_insulation*log(r3/r2)))in KJ/hr")
L=1;
Q=(T1-T3)*2*%pi*L/((1/k_pipe)*log(r2/r1)+(1/k_insulation*log(r3/r2)))
disp("so heat loss per meter from pipe =1479.34 KJ/hr")
disp("heat loss from  5 m length(Q) in KJ/hr")
Q=5*Q
disp("enthalpy of saturated steam at 300 oc,h_sat=2749 KJ/kg=hg from steam table")
hg=2749;
disp("mass flow of steam(m)in kg/hr")
m=m*60
disp("final enthalpy of steam per kg at exit of 5 m pipe(h)in KJ/kg")
h=hg-(Q/m)
disp("let quality of steam at exit be x,")
disp("also at 300oc,hf=1344 KJ/kg,hfg=1404.9 KJ/kg from steam table")
hf=1344;
hfg=1404.9;
disp("h=hf+x*hfg")
disp("so x=(h-hf)/hfg")
x=(h-hf)/hfg
disp("so quality of steam at exit=0.8245")
