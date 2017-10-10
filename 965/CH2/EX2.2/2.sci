clc;
clear all;
disp("Heat transfer rate")
t1=60;// degree C temperature of inner surface of the wall
t2=35;// degree C temperature of outer surface of the wall
L=0.22;// m thickness of the wall
k=0.51;// W/m*C thermal conductivity of the brick
q = k*(t1-t2)/L ;// = Q/A W/m^2 rate of heat transfer
disp ("W/m^2",q,"the heat transfer rate is = ")
