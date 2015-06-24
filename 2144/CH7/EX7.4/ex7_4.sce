// Exa 7.4
clc;
clear;
close;
// Given data
H1 = 2800;// in kJ/kg
H2 = 2600;// in kJ/kg
C2 = sqrt(2*(H1-H2)*1000);// in m/s
disp(C2,"Exit velocity in m/s is ");
m_f = 25;// mass flow rate in kg/sec
V = 0.154;// in m^3/kg
A = (m_f*V)/C2;// in m^2
disp(A,"Total exit area in m^2 is");
