//Exa 5.3
clc;
clear;
close;
format('v', 11)
// given data
nita=628;// in J/m^3
B_max=1.3;// in Wb/m^2
f=25;// in Hz
ironMass=50;// in kg
densityOfIron=7.8*10^3;// in kg/m^3
V=ironMass/densityOfIron;
x=12.5;// in AT/m
y=0.1;// in T
// formula Hysteresis loss/second = nita*B_max^1.6*f*V
H_Loss_per_second = nita*B_max^1.6*f*V ;// in J/s
H_Loss_per_second=floor(H_Loss_per_second);
H_Loss_per_hour= H_Loss_per_second*60*60;// in J
disp("Hysteresis Loss per hour is : "+string(H_Loss_per_hour)+" J");
// Let Hysteresis Loss per m^3 per cycle = H1
H1=nita*B_max^1.6;
// formula  hysteresis loss/m^3/cycle = x*y*area of B-H loop
Area_of_B_H_loop=H1/(x*y);
Area_of_B_H_loop=floor(Area_of_B_H_loop);
disp("Area of B-H loop is : "+string(Area_of_B_H_loop)+" cm^2");
