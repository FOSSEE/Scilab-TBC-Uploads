// Example 7.21:oscillation frequency 
clc;
clear;
close;
C=100;//capacitance in pico farad
R=800;//resistance in killo ohms
fo=round(1/(2*%pi*R*10^3*C*10^-12*sqrt(6)));//RESONANT FREQUENCY IN HERTZ
disp(fo,"RESONANT FREQUENCY IN HERTZ")
