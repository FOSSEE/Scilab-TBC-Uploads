// Sp_Example 3.1

clear; clc; close;

format('v',7);
// Given data
Ns=12;//poles
q=3;//no. of phase
Nr=8;//poles
speed=6000;//speed in rpm

//Calculations
Beta=360/q/Nr;//in degree
disp(Beta,"Step Angle in degree : ");
fc=Nr*speed*2*%pi/2/%pi/60;//in Hz
disp(fc,"Commutation frequency at each phase in Hz : ");

