clc;
clear all;
disp("Heat loss/length")
a=0.6;// m
b=0.45;//m
H=1.5;//m
k=0.51;// W/(m*C)
tp=105;// degree C
ts=5;// degree C

x=log(1+H/a);
y=H/b;

Sfc=2.756*((x^(-.59))*(y^(-.078)));

Q=k*Sfc*(tp-ts);

disp("W",Q,"Heat loss per meter length, Q =")
