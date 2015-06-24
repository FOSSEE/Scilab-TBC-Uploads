// Example 3.9 (a): the percent second harmonic distortion
clc, clear;
V1ce=22; // maximum voltage in volts
V2ce=1.2; // minimum voltage in volts
Vceq=10; // in volts
D2=(((1/2)*(V1ce+V2ce)-Vceq)/(V1ce-V2ce))*100;
disp(D2," the percent harmonic distortion (%) = ")
