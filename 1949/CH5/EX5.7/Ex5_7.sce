//Chapter-5,Example 5_7,Page 5-26
clc()

//Given Values:
m=9.108*10^-31       //mass of electron
h=6.625*10^-34       //Planck's constant
lam=5*10^-7          //wavelength of electron

//Calculations:

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
E1=h^2/(2*m*lam^2)     //Energy of electron in joules
E=E1/(1.6*10^-19)      //Energy of electron in electron-Volts
printf('Energy of electron is =%.9f eV \n',E)
