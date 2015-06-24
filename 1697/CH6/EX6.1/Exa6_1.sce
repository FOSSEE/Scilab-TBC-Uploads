//Exa 6.1
clc;
clear;
close;
n=20;//no. of turns
//Clambda=lambda
//Slambda=lambda/4
//HPBW : 
disp("HPBW=52/(Clambda*sqrt(n*Slambda))");
//Putting values below :
Clambda=1;//in Meter
Slambda=1/4;//in Meter
HPBW=52/(Clambda*sqrt(n*Slambda));//in degree
disp(HPBW,"HPBW in degree : ");
//Axial Ratio
Aratio=(2*n+1)/2;//unitless
disp(Aratio,"Axial Ratio : ");
//Gain
D=12*Clambda^2*n*Slambda;//unitless
disp(D,"Gain : ");