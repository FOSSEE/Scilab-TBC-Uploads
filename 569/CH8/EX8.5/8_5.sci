// calculate seperation distance between two surfaces and angle of tilt
clc;
N=5;
lem=546*10^-9;
d=[(2*N-1)*lem*10^6]/4;
disp(d,'seperation distance between two surfaces(micro-meter)')
x=75;
th=atan(d/x);
disp(th,'angle of tilt')