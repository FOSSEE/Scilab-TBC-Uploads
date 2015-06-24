//clear//
clc
clear
exec("4.2data.sci");
 
 FA0 = FC/X;
 vA0 = FA0/CA01;
 vB0 = vA0;
 v0 = vA0+vB0;
 V = v0*X/(k*(1-X));
 
 // CSTR in parallel
 V1 = 800/7.48;

 Tau =V1/(v0/2);
 Da= Tau*k;
 Xparallel = Da/(1+Da)
 
 // CSTR in series
 Tau =V1/v0;
 n=2;
 Xseries = 1- (1/(1+Tau*k)^n);

disp("Reactor volume")
disp(V)
disp ("ft^3")
disp("CSTR in parallel X =")
disp(Xparallel)
disp("CSTR in series X =")
disp(Xseries)
