// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 1")
//The length of steel sheet (Ls)=1.5 mm and thermal conductivity (ks)=25 W/(mK) at the outer surface.
Ls=1.5;
ks=25;
//The length of plywood (Lp)=10 mm and thermal conductivity (kp)= .05 W/(mK) at the inner surface.
Lp=10;
kp=.05;
//The length of glass wool (Lg)=20 mm and thermal conductivity (kg)= .01W/(mK) in between steel sheet and plywood.
Lg=20;
kg=.01;
//The temprature of van inside cold Enviroment is (Ti)= -15°C  while the outside surface is exposed to a surrounding ambient temprature (To)=24°C 
To=24;
Ti=-15;
//The average value of heat transfer coefficients at the inner and outside surfaces of the wall are hi=12 W/(m^2*K) and ho= 20 W/(m^2*K) 
hi=12;
ho=20;
//The surface area of wall (A)= .75 m^2 
A=.75;
//The convective resistance is Ro= 1/(ho*A) at the outer surface
disp("The convective resistance Ro= 1/(ho*A) at the outer surface in KW^-1 is")
Ro=1/(ho*A)
//The conduction resistance is Rs= Ls/(ks*A) of steel sheet
disp("The conduction resistance Rs= Ls/(ks*A) of steel sheet in KW^-1 is")
Rs=Ls*10^-3/(ks*A)
//The conduction resistance is Rg= Lg/(kg*A) of glass wool
disp("The conduction resistance Rg= Lg/(kg*A) of glass wool in KW^-1 is")
Rg= Lg*10^-3/(kg*A)
//The conduction resistance is Rp= Lp/(kp*A) of plywood
disp("The conduction resistance Rp= Lp/(kp*A) of plywood in KW^-1 is")
Rp= Lp*10^-3/(kp*A)
//The convective resistance is Ri= 1/(hi*A) at the outer surface
disp("The convective resistance Ri= 1/(hi*A) at the outer surface in KW^-1 is")
Ri= 1/(hi*A)
//The rate of heat flow is Q=(To-Ti)/(Ro+Rs+Rg+Rp+Ri)
disp("The rate of heat flow Q=(To-Ti)/(Ro+Rs+Rg+Rp+Ri) in W is")
Q=(To-Ti)/(Ro+Rs+Rg+Rp+Ri)
//The tempraure at the outer surface of wall is T1.
//The temprature at the interface b/w steel sheet and glass wool is T2.
//The temprature at the interface b/w glass wool and plywood is T3.
//The tempraure at the inner surface of wall is T4.
disp("The temprature at the outer surface of wall is T1=To-(Q*Ro) in °C")
T1=To-(Q*Ro)
disp("The temprature at the interface b/w steel sheet and glass wool is T2=T1-(Q*Rs) in°C")
T2=T1-(Q*Rs)
disp("The temprature at the interface b/w glass wool and plywood is T3=T2-(Q*Rg) in°C")
T3=T2-(Q*Rg)
disp("The temprature at the inner surface of wall is T4=T3-(Q*Rp)in °C")
T4=T3-(Q*Rp)
//Check for Ti(Temprature inside the van)
disp("Check for Ti(in °C)")
Ti=T4-(Q*Ri)
disp("The value is same as given in the problem")

















 







