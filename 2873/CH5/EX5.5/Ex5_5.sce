// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 5")
m=1;//mass of copper block in kg
T=(27+273);//temperature of copper block in K
h=200;//height from which copper block dropped in sea water in m
C=0.393;//heat capacity for copper in KJ/kg K
g=9.81;//acceleration due to gravity in m/s^2
disp("deltaS_universe=(deltaS_block+deltaS_seawater)")
disp("since block and sea water both are at same temperature so,")
disp("deltaS_universe=deltaS_seawater")
disp("conservation of energy equation yields,")
disp("Q-W=deltaU+deltaP.E+deltaK.E")
disp("since in this case,W=0,deltaK.E=0,deltaU=0")
disp("Q=deltaP.E")
disp("change in potential energy=deltaP.E=m*g*h in J")
deltaPE=m*g*h
Q=deltaPE
disp("deltaS_universe=deltaS_seawater=Q/T in J/kg K")
deltaS_universe=Q/T
disp("entropy change of universe(deltaS_universe)in J/kg K")
deltaS_universe
