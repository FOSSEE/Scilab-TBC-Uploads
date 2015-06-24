//Chapter-5,Example 5_5,Page 5-25
clc()

//Given Values:
mn=1.674*10^-27     //mass of neutron
h=6.63*10^-34       //Planck's constant
lam=1*10^-10        //wavelength of neutron

//Calculations:

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
E1=h^2/(2*mn*lam^2)   //Energy of neutron in joules
E=E1/(1.6*10^-19)     //Energy of neutron in electron-Volts

printf('Energy of neutron is =%.3f eV \n',E)
