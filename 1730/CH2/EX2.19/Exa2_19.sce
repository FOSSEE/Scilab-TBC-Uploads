//Exa2.19
clc;
clear;
close;
disp("Let R0 be the resistance of the coil at 0 degree C and alpha0 be its temperature coefficient of resistance at 0 degree C");
disp("Resistance at 20 degree C, 18 = R0 * (1+20*alpha0)                (i)");
disp("Resistance at 50 degree C, 20 = R0 * (1+50*alpha0)                (ii)");
disp("Dividing Eq.(ii) by Eq.(i), we have");
disp("20/18= (1+50*alpha0)/(1+20*alpha0)");
disp("or alpha0 = 1/250=0.004 ohm/ohm/degree C");
disp("If t degree C is the temperature of coil when its resistance is 21 ohm, then");
disp("21=R0*(1+0.004*t)");
disp("Dividing Eq.(iii) by Eq.(ii), we have");
disp("21/20=(1+0.004*t)/(1+50*0.004)");
disp("or t=65 degree C");
disp("Temperature rise = t-surrounding temperature = 65 - 15 = 50 degree C");

