//Example 4.7
clc;
clear;
close;
format('v',9);
//Given data :
S1=0.005;//sp. gravity
S2=1;//sp. gravity
Patm=1.014*10^5;//Pa
h=50/1000;//m
w=1000;//kg/m^3
pa=-w*S2*h;//kg/m^2
Pabs=pa*9.81+Patm;//
disp(abs(pa*9.81),"Pressure intensity of gas in Pa(Vaccum): ");
disp(Pabs,"Absolute pressure in the pipe in Pa: ");
