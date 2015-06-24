clc;
clear;
//Y is a Gaussian Random Variable

syms y;

x=5;
m=-3*(x)+5; //mean
disp(m,"mean");

var=4*7; //variance
disp(var,"variance");

Y=exp(-{(y+10)^2}/56)/sqrt(56*%pi);

disp("Y is an N{-10,28} random variable");
disp(Y,"density function f(y)= ");
