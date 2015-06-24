//Exa 2.2
clc;
clear;
close;
//given data
Iio=20;//in nA
IB=100;//in nA
//Iio=IB1-IB2
disp("Eqn(1) : Iio=IB1-IB2=20");
//IB=(IB1+IB2)/2
disp("Eqn(2) : 2*IB=IB1+IB2=200");
disp("Adding two equations gives :");
IB1=(200+20)/2;//in nA
disp(IB1,"IB1 in nA is : ");
IB2=IB1-Iio;//in nA
disp(IB2,"IB2 in nA is : ");