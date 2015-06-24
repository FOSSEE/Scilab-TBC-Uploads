//Exa 3.8
clc;
clear;
close;
//Given Data :
format('v',6);
W=850/1000;//in Kg/m
US=7950;//in kg
L=275;//in meter
h=8;//in meter(ground clearance)
SafetyFactor=2;//unitless
T=US/SafetyFactor;//in Kg
S=W*L^2/(8*T);//in meter
H=h+S;//in meter
disp(H,"Height above the ground(in meter): ");