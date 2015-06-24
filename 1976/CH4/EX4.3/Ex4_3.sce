
//To determine the speed for which the torque is maximum
//Page 204
clc;
clear;

//In The Figure, The author has taken the resistance in series with the motor as 0.2 ohm, but in the figure it is given as 1 ohm

//This Doesn't Affect the calculation of the speed but it does affect the Maximum Torque

//So if we consider 1 ohm we get 0.8333 instead of 2.5

//The Equation for the Torque is found out to be 2.5*K2*(V^2)*(1.1-K1*w)/((76.1-(50*K1*w)))

w=poly(0,'w'); //Variable Value of w;

//Lets assume the value of 2.5*K2*(V^2) = 1 and K1 = 1 to particularly to calculate the co-effcients

T=2.5*(1.1-w)/((76.1-(50*w))^2); //Torque

//Maximum Torque is derivative of the above equation
X=derivat(T); //Polynomial to find the value co - effcient of w;
w=roots(X(2));
w=w(2); //We Choose value less than 1 to suit the differenciation process

Tmax=2.5*(1.1-w)/((76.1-(50*w))^2); //Maximum Torque Co-Efficient

printf('The Speed at which the torque is Maximum is (%g/K1) rad/sec\n',w)
printf('The Maximum Torque is (K2*(V^2)*%g*10^-4) Nm\n',(Tmax/(10^-4)))
