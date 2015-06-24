//Chapter-5,Example 5_2,Page 5-23
clc()

//Given Values:
m=1                 //mass of given particle in kg
h=6.63*10^-34       //Planck's constant
v=1*10^3            //velocity of particle

//Calculations:
lam=h/(m*v)         //de Broglie wavelength
printf('de Broglie wavelength associated with particle is =%.40f m \n \n',lam)
printf(' This wavelength is too small for any practical significance.')
