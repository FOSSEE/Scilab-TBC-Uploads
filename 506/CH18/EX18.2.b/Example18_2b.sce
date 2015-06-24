clear;
clc;

//Caption:SCR half wave power control circuit
//Given Data
Vs=230;//in V
Rl=200;//in ohm
//Trigger is adjusted so that conduction starts after 60degree of start of cycle
//Instantaneous Current il = (230*2^0.5*sin(a))/200
//It is noted that between 0 to pi/3 SCR voltage equals line voltage and between pi/3 to pi it is zer and for the rest it is equal to line voltage
//Vl = 230*2^0.5*sin(x)
//To find instantaneous power

x0=%pi/3;//lower limit of integral
x1=%pi;//upper limit of integral
X = integrate('(230*230*2*(sin(x)^2))/200','x',x0,x1);
P = X/(2*3.14);
disp('W',P,'P=');

//End