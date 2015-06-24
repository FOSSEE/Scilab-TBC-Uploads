
clc
//Initialization of variables
G = 2.3 // Gas flow in gmol/sec
L = 4.8 // Liquid flow in gmol/sec
y0 = 0.0126 // entering gas Mole fraction of CO2
yl = 0.0004 // Exiting gas mole fraction of CO2 
xl = 0 // Exiting liquid mole fraction of CO2
d = 40 // Diameter of the tower in cm
x0star = 0.0080// if the amine left in equilibrium with the entering gas would contain 0.80 percent C02
Kya = 5*10^-5 // Overall M.T.C and the product times the area per volume in gmol/cm^3-sec
//Calculations
A =%pi*(d^2)/4
x0 = ((G*(y0-yl))/(L)) + xl // Entering liquid mole fraction of CO2
m = y0/x0star // Equilibirum constant
c1 = G/(A*Kya)
c2 = 1/(1-(m*G/L))
c3 = log((y0-m*x0)/(yl-m*xl))
l = (G/(A*Kya))*(1/(1-((m*G)/L)))*(log((y0-m*x0)/(yl-m*xl)))/100 //length of the tower in metres
//Results
printf("The length of the tower is %.1f m",l)
