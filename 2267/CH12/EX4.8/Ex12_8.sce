//Part B Chapter 4 Example 8
clc;
clear;
close;
db=100;//m
ds=75;//mm
Lb=1.2*1000;//mm
Ls=1.2*1000;//mm
Gb=40;//kN/mm^2
Gs=80;//kN/mm^2
tau_s_AB=100;//N/m^2
T_AB=tau_s_AB*%pi*db^4/32/(db/2);//Nmm
tau_s_BC=120;//N/m^2
T_BC=tau_s_BC*%pi*ds^4/32/(ds/2);//Nmm
T=min(T_AB,T_BC);//Nmm(For safety minimum value choosen)
disp("Maximum torque can be applied is "+string(T)+" Nmm");
theta=T*(Lb/(Gb*1000)/(%pi/32*db^4)+Ls/(Gs*1000)/(%pi/32*ds^4));//radian
disp("Rotation of free end is "+string(theta)+" radian");
//ANSWER IN THE BOOK IS WRONG.
