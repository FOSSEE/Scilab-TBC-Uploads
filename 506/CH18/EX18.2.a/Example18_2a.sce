clear;
clc;

//Caption:SCR half wave power control circuit
//Given Data
Vs=230;//in V
Rl=200;//in ohm
//Trigger is adjusted so that conduction starts after 60degree of start of cycle
//Instantaneous Current il = (230*2^0.5*sin(a))/200

// to find rms value
xo = %pi/3;//lower limit of integration
x1 = %pi;//upper limit of integration

X = integrate('((230*(2^0.5)*sin(x))/200)^2','x',xo,x1);
Irms = (X/(2*%pi))^0.5;
disp('A',Irms,'Irms = ');

//End