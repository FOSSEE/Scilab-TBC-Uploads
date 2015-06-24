//example 5.1
clc; funcprot(0);
// Initialization of Variable
v3=1.108e-3;
m1dot=40;
A2=25.0e-4;
v2=1.0078e-3;
m3dot=0.06/v3;
m2dot=m3dot-m1dot;
disp(m2dot,"mass flow rate in kg/s");
V2=m2dot*v2/A2;
disp(V2,"velocity in m/s");
clear()
