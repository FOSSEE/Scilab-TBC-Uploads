clc;funcprot(0);//Example 2.12
//Initilisation of Variables
L=0.05;....//length of the linear triangular fin in m
t=0.01;....//diameter of linear triangular fin in m
w=0.25;...//width of the linear triangular fin in m
K=175;....//thermal conductivity of rod in W/m*k
h=45;....//Convective heat transfer coefficient in W/m^2*K
//calculations
Am=(t/2)*L;...//Mean Area offin in m^2
E=L^(3/2)*(h/K*Am)^(3/2);....//
disp("From the graph ,fin efficiency is 175 W/m^2*K")
