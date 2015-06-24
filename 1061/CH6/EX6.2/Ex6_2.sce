//Ex:6.2
clc;
clear;
close;
w=40*10^-3;// cable weighing in kg/m
R=20*10^-2;// radius of curvature in meter
n=0.19;// co-efficient of friction
x=(3.14/4);// angle in rad
si=42.36;// pulling tension at the entrance in kg
X=(si/(w*R));//
Y=asinh(si/(w*R));
Z=w*R*sinh(n*x+Y);//puttling tension at the exit of an optical cable
printf("The puttling tension at the exit of an optical cable =%f kg", Z);