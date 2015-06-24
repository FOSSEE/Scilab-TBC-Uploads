//Example 1.38:// percentage error
clc;
clear;
fn=5;// natural frequency in kHz 
f=7;//excitation frequency in kHz
r=f/fn;//ratio 
y=0.62;//damping ratio
M= (1/(sqrt((1-r^2)^2+(2*y*r)^2)));//amplitude ratio
E=(1-M)*100;//error due to proximity of excitation frequency with the natural frequency of the system 
disp(E,"percentage error due to proximity of excitation frequency with the natural frequency of the system ")
