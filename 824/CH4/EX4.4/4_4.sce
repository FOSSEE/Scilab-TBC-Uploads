//clear//
clc
clear
exec("4.4data.sci");
 
 FA0 = FB/X;
 CA0 = yA0*P0/(R*T0);
 R = 1.987;
 k2 = k1*exp((E/R)*((1/T1)-(1/T2)));
 V =( FA0/(k2*CA0))*((1+e)*log(1/(1-X))-e*X);

disp("Reactor volume")
disp(V)
disp("ft^3")
