//Exa 2.8
clc;
clear;
close;
//Given Data :
format('v',8);
disp("Assumptions : ");
disp("Power to be transmitted is the same(say, P watts)");
disp("Length of the line is the same(say, l meters)");
disp("Losses in the line are the same(say, W watts)");
//I=P/V;//in Ampere
//a=2*I^2*R=2*(P/V)^2*rho*l/W;//in m^2
//volume=2*a*l;//
disp("Volume of copper required for 2 wires=K/V^2")
//(i) When V=220 volts
V1=220;//in volts
disp("Vol1=K*"+string(1/V1^2));
//(ii) When V=500 volts
V2=500;//in volts
disp("Vol2=K*"+string(1/V2^2));
saving=((1/V1^2)-(1/V2^2))*100/(1/V1^2);//in 
disp(saving,"% saving in copper : ");