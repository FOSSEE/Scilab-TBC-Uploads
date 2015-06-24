//Chapter-5,Example 5_11,Page 5-29
clc()

//Given Values:
m1=50*10^-9         //mass of particle in kg
m2=9.1*10^-31       //mass of electron in kg
h=6.625*10^-34      //Planck's constant
v1=1                //velocity of particle
v2=3*10^6           //velocity of electron

//Calculations:
lam1=h/(m1*v1)*10^10        //de Broglie wavelength
printf('de Broglie wavelength associated with particle is =%.20f Angstrom \n \n',lam1)

lam2=h/(m2*v2)*10^10        //de Broglie wavelength
printf(' de Broglie wavelength associated with electron is =%.3f Angstrom \n \n',lam2)

printf(' Wavelength of electron is measurable.')
