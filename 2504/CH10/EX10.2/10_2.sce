clc
//initialisation of variables
clear
g= 32.2 //ft/sec^2
u= 3.6*10^-5 //lbf sec/ft^2
d= 64 //lbm/ft^2
l= 20 //ft
a= 0.5
//CALCULATIONS
sw= u*g/(a*d)
sw1= u^2*g*l/(2*a*d)
Re=[1 2 3 4 5 6 7 8 9 10]*10^5
Vinf=Re*u*g/(d*a)
Cd=[1.2 1.15 0.94 0.68 0.305 0.31 0.32 0.33 0.34 0.35]
cdre=Cd.*Re^2
D=sw1*cdre
//RESULTS
plot(Vinf,D)
xtitle("","Vinf, ft/sec", "D, lbf") 

//data for curves b,c,d is not given
