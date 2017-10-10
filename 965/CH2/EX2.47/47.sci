clc;
clear all;
disp("i) When better insulation inside")
r1=30/2;//mm outer radius of pipe
r2=r1+20;//mm outer radius of insulation1
r3=r2+20;//mm outer radius of insulation2
//kB=5*kA// W/(m*C)
//t1 degree C
//t3 degree C

//Q1=2*3.1416*L*(t1-t3)/((log (r2/r1))/kA+(log (r3/r2))/(5*kA));
//Q1=1.0662*2*3.1416*L*kA*(t1-t3)
disp("heat transfer rate Q1=1.0662*2*3.1416*L*kA*(t1-t3) W ")

disp("ii) When better insulation outside")

//Q2=2*3.1416*L*(t1-t3)/((log (r2/r1))/(5*kA)+(log (r3/r2))/kA)
//Q2=1.609*2*3.1416*L*kA*(t1-t3)
//Q2/Q1=(1.609*2*3.1416*L*kA*(t1-t3))/(1.0662*2*3.1416*L*kA*(t1-t3))=1.509
disp("Q2>Q1  hence putting better insulation next to the pipe decreases heat flow")
//percent decrease in heat transfer=(Q2-Q1)/Q1=Q2/Q1-1
A=1.509;//Q2/Q1
disp("%",(A-1)*100,"percent decrease in heat transfer = ")
