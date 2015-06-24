//Chapter-5,Example 5_6,Page 5-25
clc()

//Given Values:
mn=1.67*10^-27      //mass of neutron
h=6.6*10^-34        //Planck's constant
lam=3*10^-10        //wavelength of neutron
d=3.036*10^-10      //lattice spacing

//Calculations:

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
E1=h^2/(2*mn*lam^2)  //Energy of neutron in joules
E=E1/(1.6*10^-19)    //Energy of neutron in electron-Volts
printf('Energy of neutron is =%.5f eV \n \n',E)

//using bragg's law for first order  lam=2d sin(theta)
theta=asin(lam/(2*d))*180/%pi      //glancing angle in degrees
printf(' Glancing angle at which first orde reflection occurs is =%.0f degrees \n',theta)
