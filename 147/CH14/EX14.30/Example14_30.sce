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
Zs = Ra + %i*Xs;
theta = atan(imag(Zs),real(Zs));
phi = acos(-polar(Ia*Zs)^2/(2*polar(Ia*Zs)*Vt)) - theta;
Pf2 = cos(phi);
mprintf('Power factor for zero regulation = %0.3f leading',Pf2);
