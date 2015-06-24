// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 22")
Cp=1.005;//specific heat at constant pressure in KJ/kg K
Cv=0.718;//specific heat at constant volume in KJ/kg K
Ti=(25+273.15);//atmospheric temperature in K
disp("filling of the tank is a transient flow(unsteady)process.for the transient filling process,considering subscripts i and f for initial and final states,")
disp("hi=uf")
disp("Cp*Ti=Cv*Tf")
disp("so Tf=Cp*Ti/Cv in K")
Tf=Cp*Ti/Cv
disp("inside final temperature,Tf=417.33 K")
disp("change in entropy,deltaS_gen=(Sf-Si)+deltaS_surr in KJ/kg K")
disp("Cp*log(Tf/Ti)+0")
deltaS_gen=Cp*log(Tf/Ti)
disp("change in entropy,deltaS_gen=0.3379 KJ/kg K")
disp("irreversibility,I=To*deltaS_gen in KJ/kg")
To=Ti;
I=To*deltaS_gen
disp("irreversibility,I=100.74 KJ/kg")
