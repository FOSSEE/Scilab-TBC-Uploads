// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 12")
//A large block of nickel steel conductivity(k=20W/(m*K)),thermal diffusivity(alpha=0.518*10-5 m^2/s) is at uniform temprature(Ti) of 30°C.
Ti=30;
k=20;
alpha=0.518*10^-5;
//One surface of the block is suddenly exposed to a constant surface heat flux(qo) of 6MW/m^2.
qo=6*10^6;//in W/m^2
//To determine the temprature at a depth(x) of 100mm after a time(t) of 100 seconds.
t=100;
x=0.1;//in metre
//Similarity parameter,eta=x/(4*alpha*t)
eta=x/((4*alpha*t)^0.5)
//E is gaussian error function
disp("gaussian error function is" )
E=erf(eta)
//The equation to determine temprature is T-Ti=((2*qo(alpha*t/%pi)^0.5)/(k))*e^((-x^2)/(4*alpha*t))-((qo*x)/(k))*erf(x/(2*(alpha*t)^0.5))
//Above equation can also be written as T=Ti+((2*qo(alpha*t/%pi)^0.5)/(k))*e^((-x^2)/(4*alpha*t))-((qo*x)/(k))*erf(x/(2*(alpha*t)^0.5))
disp("The temprature at a depth(x) of 100mm after a time(t) of 100 seconds,in °C is")
T=Ti+((2*qo*(alpha*t/%pi)^0.5)/(k))*%e^((-x^2)/(4*alpha*t))-((qo*x)/(k))*erfc(x/(2*(alpha*t)^0.5))//NOTE:The answer in the book is incorrect(Calculation mistake)











