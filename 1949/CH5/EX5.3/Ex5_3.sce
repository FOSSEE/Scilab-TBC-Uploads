//Chapter-5,Example 5_3,Page 5-24
clc()

//Given Values:
m1=40*10^-3         //mass of bullet in kg
m2=9.1*10^-31       //mass of electron in kg
h=6.63*10^-34       //Planck's constant
v=1100              //velocity of bullet and electron

//Calculations:
lam1=h/(m1*v)        //de Broglie wavelength
printf('de Broglie wavelength associated with bullet is =%.36f m \n \n',lam1)

lam2=h/(m2*v)        //de Broglie wavelength
printf(' de Broglie wavelength associated with electron is =%.10f m \n \n',lam2)

printf(' Wavelength of bullet is too small.Hence it can not be measured with help of diffraction effect.')
