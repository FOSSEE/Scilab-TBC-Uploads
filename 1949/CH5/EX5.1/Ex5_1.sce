//Chapter-5,Example 5_1,Page 5-23
clc()

//Given Values:
m=6.68*10^-27       //mass of alpha particle
V=30*10^3           //potential difference
e=1.6*10^-19        //charge of an electron
q=2*e               //Charge of alpha particle
h=6.63*10^-34       //Planck's constant

//Calculations:
lam=h/sqrt(2*m*q*V)     //de Broglie wavelength
printf('de Broglie wavelength associated with alpha particle is =%.16f m \n',lam)
