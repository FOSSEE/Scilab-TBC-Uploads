clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
lambda=0.194*10^-9 //wavelength in m
E_ca=3.69 //energy of calcium target in keV
Z_ca=20 //atomic no of calcium
//calculation

E_imp=((h*c)/(lambda*1.6*10^-19))/10^3
Z_imp=(sqrt(E_imp/E_ca)*(Z_ca-1)+1)

mprintf("The atomic no is = %d,hence impurity is iron",Z_imp)
