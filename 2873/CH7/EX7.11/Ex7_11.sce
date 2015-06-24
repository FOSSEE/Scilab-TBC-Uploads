// Display modeK
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 11")
To=280;//surrounding temperature in K
Q=500;//heat removed in KJ
T1=835;//temperature of reservoir in K
T2=720;//temperature of system in K
disp("availability for heat reservoir(A_HR)=To*deltaS_reservoir in KJ/kg K")
A_HR=To*Q/T1
disp("now availability for system(A_system)=To*deltaS_syatem in KJ/kg K")
A_system=To*Q/T2
disp("net loss of available energy(A)=A_HR-A_system in KJ/kg K")
A=A_HR-A_system 
disp("so loss of available energy=26.77 KJ/kg K")
