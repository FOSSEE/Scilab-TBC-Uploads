//Example 4.10//distance
clc;
clear;
close;
format('v',5) 
h1=10;//in meters
eL=1;//ASSUME
Ea=1/(10)^2;//
X=(((10^3)*eL)/10^2)*10*(1/Ea);
x=(X)^(2/3);//
y=sqrt(x-100);//
disp(y,"distance in meters is")
