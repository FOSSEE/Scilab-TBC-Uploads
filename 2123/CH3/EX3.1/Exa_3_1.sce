//Example No. 3.1
clc;
clear;
close;

//Given Data : 
MoI=0.3;//Kg-m^2
T=20;//N-m
MoIshaft=10;//in Kg-m^2
LostT=10;//%

//Solution : 
MoItotal=MoI+MoIshaft;//in Kg-m^2
LoadTorque=T-T*LostT/100;//in N-m
disp(MoItotal,"Total Moment of Inertia in Kg-m^2 : ");
disp(LoadTorque,"Load Torque in N-m : ");
