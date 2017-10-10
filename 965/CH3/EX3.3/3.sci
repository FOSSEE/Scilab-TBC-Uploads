clc;
clear all;
disp("Heat loss calculation")
r=0.6/2;//m
L=1;//m
H=1.8;//m
k=0.51;// W/(m*C)
tp=95;// degree C
te=25;// degree C
Sfc=2*3.1416*L/(log(2*H/r));
Q=k*Sfc*(tp-te);
disp("W",Q,"Heat loss from the pipe meter length, Q =")
