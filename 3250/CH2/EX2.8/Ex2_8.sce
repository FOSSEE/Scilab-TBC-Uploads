clc 
// Given that
A= 60*7.5 // Cross sectional area in cm^2
v=0.05 // Withdrawal rate in m/sec
t = 0.0125 // Thickness in m
thetaF= 1500 // Temperature of mould face in degree centigrate
thetaP = 1550 // 
thetaO = 20 // Initial temperature of mould in Degree centigrate
L= 268e3 // Latent heat of molten metal in J/Kg
Dm = 7680 // Density of molten metal in Kg/m^3
Cs = 0.67e+3 //Specific heat of molten metal in J/Kg-K
Cm = 0.755e3 //Specific heat of mould in J/Kg-K
Ks = 76 // Conductivity of molten metal in W/m-K
hF = 1420 // Heat transfer coefficient at the casting-mould interface in W/m^2-°C
Dtheta = 10 // Maximum temperature of cooling water in ° C
// Sample Problem 8 on page no. 77
printf("\n # PROBLEM 2.8 # \n")
L_ = L+Cm*(thetaP-thetaF)
x=L_ / (Cs*(thetaF-thetaO))
y= hF*t/Ks
printf(" L_/(Cs(thetaF-thetaO))=%f,\n hF*t/Ks=%f",x,y)
z=0.11 // Where z=hF^2 * lm / (v*Ks*Dm*Cs)
lm= (z*v*Ks*Dm*Cs)/(hF^2)
Z=0.28 // Where Z=Q/(lm*(thetaF-thetaO)*sqrt(lm*v*Dm*Cs*Ks))
Q = Z*lm*(thetaF-thetaO)*sqrt(lm*v*Dm*Cs*Ks)
m = Q / (4.2e3*Dtheta)
printf("\n The mould length = %f meter,\n  The cooling water requirement = %f Kg/sec", lm,m)
// Answer for The cooling water requirement in the book is given as 5.05 Kg/sec, Which is wrong.
