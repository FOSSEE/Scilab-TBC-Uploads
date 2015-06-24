// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 7")
m=0.5;//hot gases flowing rate in kg/s
T1=500;//initial temperature of gas in degree celcius
T2=150;//final temperature of gas in degree celcius
Cg=1.2;//specific heat of gas in KJ/kg K
Cw=4.18;//specific heat of water in KJ/kg K
U=150;//overall heat transfer coefficient in W/m^2 K
mw=1;//mass of water in kg/s
T3=10;//water entering temperature in degree celcius
disp("Let the temperature of water at exit be T")
disp("Heat exchanger,Q=heat rejected by glasses=heat gained by water")
disp("Q=m*Cg*(T1-T2)=mw*Cw*(T-T3)")
disp("so T=T3+(m*Cg*(T1-T2)/(mw*Cw))in degree celcius")
T=T3+(m*Cg*(T1-T2)/(mw*Cw))
disp("and Q in KJ")
Q=m*Cg*(T1-T2)
disp("deltaT_in=T1-T3 in degree celcius")
deltaT_in=T1-T3
disp("deltaT_out=T2-T in degree celcius")
deltaT_out=T2-T
disp("for parallel flow heat exchanger,")
disp("LMTD=(deltaT_in-deltaT_out)/log(deltaT_in/deltaT_out)in degree celcius")
LMTD=(deltaT_in-deltaT_out)/log(deltaT_in/deltaT_out)
disp("also,Q=U*A*LMTD")
disp("so A=Q/(U*LMTD) in m^2")
A=Q*10^3/(U*LMTD)
disp("surface area,A=5.936 m^2")
