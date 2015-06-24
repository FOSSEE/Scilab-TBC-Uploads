//Part B Chapter 4 Example 4
clc;
clear;
close;
D=50;//mm
l=3;//m
P=60;//hp
N=250;//rpm
G=90;//GN/m^2
Pl=20;//hp(assumed)
Tl=Pl*746/2/%pi/N;//Nm
Pr=Pl*2;//hp(Pr:Pl=1:2)
Tr=Pr*746/2/%pi/N;//Nm
tau_max=Tr*(D/2)*10^-3*32/(%pi*(D/1000)^4);//MN/m^2
disp("Maximum shear stress is "+string(tau_max/10^6)+" MN/m^2.");
theta_l=Tl*1.5*32/(G*10^9*%pi*(D/1000)^4);//radian
theta_r=Tr*1.5*32/(G*10^9*%pi*(D/1000)^4);//radian
theta=theta_r-theta_l;//radian
disp("Angle of twist is "+string(theta)+" radian.");
