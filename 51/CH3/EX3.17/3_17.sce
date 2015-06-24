clc;
clear;
V=5;//m/s
sg=1.03;
h=50;//m
//since static pressure is greater than stagnation pressure, Bernoulli's equation is incorrect
//p2=(d*(V1^2)/2)+(d*g*h) ; V1=V
p2=(((sg*1000)*(V^2)/2) + (sg*1000*9.81*h))/1000;//kPa
disp("kPa",p2,"The pressure at stagnation point 2 =")