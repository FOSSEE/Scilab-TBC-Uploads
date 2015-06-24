// calculate amplification ratio and percentage error
clc;
AR=1/(0.83-0.8);
disp(AR,'Amplification ratio')
D=50*10^-3;
A= (%pi/4)*D^2;
d=6*10^-3;
a= (%pi/4)*d^2;
PR=(a/A)*100;
disp(PR,'percentage error')
