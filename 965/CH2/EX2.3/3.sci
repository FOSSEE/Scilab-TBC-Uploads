clc;
clear all;
disp("Net heat flux")
t1=100;// degree C temperature of one surface of the slab
t2=0;// degree C temperature of another surface of the slab
L=0.25;// m thickness of the wall
k=387.6;// W/(m*K) thermal conductivity of the brick
q = k*(t1-t2)/L ;// = Q/A W/m^2 rate of heat transfer
disp ("W/m^2",q,"the heat transfer rate is = ")
