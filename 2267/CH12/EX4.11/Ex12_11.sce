//Part B Chapter 4 Example 11
clc;
clear;
close;
b=25;//mm
L=120;//mm
d=60;//mm
P=100*1000;//W
N=120;//rpm
T=P*60/2/%pi/N;//Nm
tauS=(T*16/%pi/d^3)*1000;//N/mm^2
tauK=(T*2/b/d/L)*1000;//N/mm^2
disp("Shear Stress for shaft is "+string(tauS)+" N/mm^2");
disp("Shear Stress for key is "+string(tauK)+" N/mm^2");
