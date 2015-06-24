// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 9")
W=-200;//shaft work in KJ/kg of air
deltah=100;//increase in enthalpy in KJ/kg of air
Q1=-90;//heat transferred to water in KJ/kg of air
disp("work interaction,W=-200 KJ/kg of air")
disp("increase in enthalpy of air=100 KJ/kg of air")
disp("total heat interaction,Q=heat transferred to water + heat transferred to atmosphere")
disp("writing steady flow energy equation on compressor,for unit mass of air entering at 1 and leaving at 2")
disp("h1+C1^2/2+g*z1+Q=h2+C2^2/2+g*z2+W")
disp("assuming no change in potential energy and kinetic energy")
disp("deltaK.E=deltaP.=0")
disp("total heat interaction(Q)in KJ/kg of air")
disp("Q=deltah+W")
Q=deltah+W
disp("Q=heat transferred to water + heat transferred to atmosphere=Q1+Q2")
disp("so heat transferred to atmosphere(Q2)in KJ/kg of air")
Q2=Q-Q1
