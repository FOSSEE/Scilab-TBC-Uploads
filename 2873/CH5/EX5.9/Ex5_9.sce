// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 9")
T1=500;//temperature of system in K
T2=300;//temperature of reservoir in K
disp("system and reservoir can be treated as source and sink.device thought of can be a carnot engine operating between these two limits.maximum heat available from system shall be the heat rejected till its temperature drops from 500 K to 300 K")
disp("therefore,maximum heat(Q1)=(C*dT)in J")
disp("here C=0.05*T^2+0.10*T+0.085 in J/K")
disp("so Q1=(0.05*T^2+0.10*T+0.085)*dT")
function y = f(T), y = (0.05*T^2+0.10*T+0.085), endfunction
Q1 = intg(T1, T2, f)
Q1=-Q1
disp("entropy change of system,deltaS_system=C*dT/T in J/K")
disp("so deltaS_system=(0.05*T^2+0.10*T+0.085)*dT/T")
function y = k(T), y = (0.05*T^2+0.10*T+0.085)/T, endfunction
deltaS_system = intg(T1, T2, k)
disp("deltaS_reservoir=Q2/T2=(Q1-W)/T2")
disp("also,we know from entropy principle,deltaS_universe is greater than equal to 0")
disp("deltaS_universe=deltaS_system+deltaS_reservoir")
disp("thus,upon substituting,deltaS_system+deltaS_reservoir is greater than equal to 0")
disp("W is less than or equal to(Q1+deltaS_system*T2)/1000 in KJ")
W=(Q1+deltaS_system*T2)/1000
disp("hence maximum work=W in KJ")
W
