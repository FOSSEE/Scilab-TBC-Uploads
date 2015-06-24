
clc
//initialization of variables
l = 1.22 // length of tower
Gflow = 0.026 // mol/sec
GbyL = 0.07
dia = 0.088 // m
pl = 1.1/100// pl = 1-yl
p0 = 0.04/100 // p0 = 1-y0
//Calculations
A = %pi*(dia^2)/4 // cross sectional of tower in m^2
G = Gflow/A // Gas flux in mol/m^2-sec
Kya = (G/l)*(1/(1-GbyL))*(log(pl/p0))// Mass transfer per volume in mol/m^3-sec
//Results
printf("The mass transfer per volume is %.1f mol/m^3-sec",Kya)
