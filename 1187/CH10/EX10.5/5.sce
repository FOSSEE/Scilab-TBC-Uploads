clc

g=9.81; // m/s^2
T=5; // s
h=4; // m

// lambda=g*T^2/(2*%pi)*tanh(2*%pi*h/lambda1);
// by trial method , we get 
lambda1=28.04;

lambda=g*T^2/(2*%pi)*tanh(2*%pi*h/lambda1);
disp("Wavelength =")
disp(lambda)
disp("m")