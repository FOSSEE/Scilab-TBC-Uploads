clear;
clc;
close;
disp("Example 3.1")
M0=0.85 //Mach no.
a0=300 //speed of sound in m/s
m=50 //Air mass flow rate in kg/s
//Calculations
V0=M0*a0 //Flight speed
Dr=m*V0 //Ram drag
Dk=Dr/1000 //in kN
disp(Dk,"The ram drag for given engine in kN:")