clear;
clc;

//Caption:SCR half wave power control circuit
//Given Data
Vs=230;//in V
Rl=200;//in ohm
//Trigger is adjusted so that conduction starts after 60degree of start of cycle
//Instantaneous Current il = (230*2^0.5*sin(a))/200

//To find Vrms

//It is noted that between 0 to pi/3 SCR voltage equals line voltage and between pi/3 to pi it is zer and for the rest it is equal to line voltage
xo=0;//lower limit of first integral
x1=%pi/3;//upper limit of first integral
x2=%pi;//lower limit of second integral
x3=2*(%pi);//upper limit of second integral
X1 = integrate('(230*(2^0.5)*sin(x))^2','x',xo,x1);
X2 = integrate('(230*(2^0.5)*sin(x))^2','x',x2,x3);
Vrms = ((X1+X2)/(2*%pi))^0.5;
disp('V',Vrms,'Vrms=');

//End