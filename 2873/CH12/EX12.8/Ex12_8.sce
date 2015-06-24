// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 8")
mc=20;//mass of oil in kg/min 
Tc_out=100;//initial temperature of oil in degree celcius
Th_in=30;//final temperature of oil in degree celcius
Th_out=25;//temperature of water in degree celcius
Cpc=2;//specific heat of oil in KJ/kg K
Cph=4.18;//specific heat of water in KJ/kg K
mh=15;//water flow rate in kg/min
U=25;//overall heat transfer coefficient in W/m^2 K
disp("This oil cooler has arrangement similar to a counter flow heat exchanger.")
disp("by heat exchanger,Q=U*A*LMTD=mc*Cpc*(Tc_out-Th_in)=mh*Cph*(Tc_in-Th_out)")
disp("so Q in KJ/min")
Q=mc*Cpc*(Tc_out-Th_in)
disp("and T=Th_out+(Q/(mh*Cph))in degree celcius")
T=Th_out+(Q/(mh*Cph))
disp("LMTD=(deltaT_in-deltaT_out)/log(deltaT_in/deltaT_out)in degree ")
disp("here deltaT_in=Tc_out-T in degree celcius")
deltaT_in=Tc_out-T
disp("deltaT_out=Th_in-Th_out in degree celcius")
deltaT_out=Th_in-Th_out
disp("so LMTD in degree celcius")
LMTD=(deltaT_in-deltaT_out)/log(deltaT_in/deltaT_out)
disp("substituting in,Q=U*A*LMTD")
disp("A=(Q*10^3/60)/(U*LMTD)in m^2")
A=(Q*10^3/60)/(U*LMTD)
disp("so surface area=132.85 m^2")
