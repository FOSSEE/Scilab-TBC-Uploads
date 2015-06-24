clc 
// Given that
thetaF= 1540 // Temperature of mould face in degree centigrate
ThetaO = 28 // Initial temperature of mould in Degree centigrate
L= 272e3 // Latent heat of iron in J/Kg
Dm = 7850 // Density of iron in Kg/m^3
Cs = 0.67e+3 //Specific heat of iron in J/Kg-K
C = 0.376e3 //Specific heat of copper in J/Kg-K
Ks = 83 // Conductivity of iron in W/m-K
K = 398 // Conductivity of copper in W/m-K
D= 8960 // Density of copper in Kg/m^3
h = .1 // Height in m
// Sample Problem 6 on page no. 73
printf("\n # PROBLEM 2.6 # \n")
zeta1=0.98//By solving eqauation- zeta*exp(zeta^2)*erf(zeta)=((thetaF-thetaO)*Cs)/(sqrt(pi)*L), zeta = 0.98
AlphaS = Ks /(Dm*Cs)
ts1 = h^2 / (16*(zeta1^2) * AlphaS)//In sec
ts1_=ts1/3600 // In hour
Phi = sqrt((Ks*Dm*Cs)/(K*D*C))
zeta2=0.815//By solving eqauation- zeta*exp(zeta^2)*(erf(zeta)+Phi)=((thetaF-thetaO)*Cs)/(sqrt(pi)*L), zeta = 0.815
ts2 = h^2 / (16*(zeta2^2) * AlphaS)//In sec
ts2_=ts2/3600 // In hour
thetaS= (thetaF-(L*(sqrt(%pi))*zeta2*(exp(zeta2^2))*erf(zeta2))/Cs)
printf("\n Solidification time for slab-shaped casting when the casting is done in a water cooled copper mould = %f hr,\n Solidification time for slab-shaped casting when the casting is done in a very thick copper mould = %f hr,\n The surface temperature of the mould = %f° C", ts1_,ts2_,thetaS)
