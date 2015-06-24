// Exa 7.1
clc;
clear;
close;
// Given data
Z1= 100;// in Ω
theta1= 30;// in °
Z2= 50;// in Ω
theta2= 0;// in °
Z3= 200;// in Ω
theta3= -90;// in °
Z4= 100;// in Ω
theta4= 30;// in °
if Z1*Z4 = = Z2*Z3 then
    disp("The first condition is satisfied")
end
if theta1+theta4 = = theta2+theta3 then
    disp("The second condiiton is also satisfied, So it is possible to balance the bridge under the given condition")
else
    disp("The second condition is not satisfied.")
    disp("So balance is not possible under given condition")
end
