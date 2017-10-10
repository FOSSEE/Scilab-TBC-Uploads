//Rated Power Pr, Synchronous reactance Xs, Armature resistance Ra
//Power factor Pf
close();
clear;
clc;
Pr = 10000;//VA
V = 230;//V
Xs = 1.2;//ohm per phase
Ra = 0.5;//ohm
Pf = 0.8;//lagging
Vt = V/sqrt(3);
theta = acos(Pf);
Ia = (Pr/3)/Vt;
Vo = sqrt((Vt*cos(theta) + Ia*Ra)^2 + (Vt*sin(theta) + Ia*Xs)^2);
reg = (Vo - Vt)/Vt*100;
mprintf('Percent voltage = %0.1f%%',reg); 