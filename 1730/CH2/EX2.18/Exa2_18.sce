//Exa2.18
clc;
clear;
close;
disp("Let the temperature coefficient of resistance of platinum at 0 degree C be alpha0 and resistance of platinum coil at 0 degree C be R0,then");
disp("Resistance at 40 degree C, R1 = R0 * (1+40*alpha0)                (i)");
disp("Resistance at 100 degree C, R2 = R0 * (1+100*alpha0)                (ii)");
disp("Dividing Eq.(ii) by Eq.(i), we have");
disp("R2/R1= (1+100*alpha0)/(1+40*alpha0)");
disp("or  3.767/3.146 = (1+100*alpha0)/(1+40*alpha0)");
disp("or alpha0 = 0.00379 ohm/ohm/degree C");
alpha0=0.00379;// in ohm/ohm/degree C
disp("Temperature coefficient of resistance at 40 degree C,")
alpha40=1/(1/alpha0+40);
disp(alpha40);
disp("Substituting R1=3.146 and alpha0=0.00379 in Eq. (i) we have")
R1=3.146;//in ohm
//Formula R1 = R0 * (1+40*alpha0)
R0=R1/(1+40*alpha0);
disp("Resistance of platinum coil at 0 degree C is : "+string(R0)+" ohm ");

