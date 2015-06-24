//Chapter-5,Example 5_12,Page 5-29
clc()

//Given Values:
me=9.1*10^-31           //mass of electron in kg
h=6.63*10^-34          //Planck's constant

//Calculations:

E1=2*10^3              //Energy in eV of electron
E=E1*(1.6*10^-19)      //Energy in joules
 
lam=h/sqrt(2*me*E)      //wavelength of electron
printf('Wavelength of electron is =%.13f m \n',lam)
