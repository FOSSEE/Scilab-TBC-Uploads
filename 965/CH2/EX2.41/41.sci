clc;
clear all;
disp("Heat loss per hour")
r1=120/2;// mm outer radius of pipe
r2=r1+45;//mm radius of layer 1
r3=r2+30;//mm radius of layer 2
kA=0.08;// W/(m*C)
kB=0.12;// W/(m*C)
t3=25;// degree C
L=30;//m length of pipe
tsat=212.4;// degree c saturation temperature at pressure of 20 bar(from steam tables)
t1=tsat+50;// temperature of steam

Q1=2*3.146*L*(t1-t3)/((log(r2/r1))/kA+(log(r3/r2))/kB);
Q=Q1*3600/1000;
disp("W/m",Q,"heat transfer per hour = ")

//Q1=2*3.14*L*(t1-t2)/((ln (r2/r1))/kA
X=Q1*((log (r2/r1))/kA)/(2*3.146*L);
t2=t1-X;
disp ("degree C",t2,"interface temperature of lagging =")
