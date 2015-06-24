clc
clear
exec("11.3data.sci");
//this is only Part A of the problem. 
dp=(6*(D^2)*L/4)^(1/3);
disp("Particle diameter dp =")
disp(dp)
disp("m")
ac=6*(1-phi)*(1/dp);
disp("Surface area pervolume of bed =")
disp(ac)
disp("m^2/m^3")
Re =dp*U/v;
Y=(2*r*Lp+2*r^2)/dp^2;
Reprime=Re/((1-phi)*Y);
DAB=DAB0*(T/T0)^(1.75);
Sc=v/DAB;
Shprime=((Reprime)^.5)*Sc^(1/3);
kc=DAB*(1-phi)*Y*(Shprime)/(dp*phi);
X=1-exp(-kc*ac*z/U);
disp("X =")
disp(X)
