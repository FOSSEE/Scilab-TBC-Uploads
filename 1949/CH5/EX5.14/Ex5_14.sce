//Chapter-5,Example 5_14,Page 5-31
clc()

//Given Values:
m=1.676*10^-27          //mass of neutron
h=6.625*10^-34          //Planck's constant
lam=1*10^-10            //wavelength of neutron

//Calculations:
C=3*10^8                //Velocity of light
Ep1=h*C/lam             //Energy of photon in joules
E1=Ep1/(1.6*10^-19)     //Energy of photon in electron-Volts
printf('Energy of photon is =%.2f eV \n \n',E1)

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
En1=h^2/(2*m*lam^2)     //Energy of neutron in joules
E2=En1/(1.6*10^-19)     //Energy of neutron in electron-Volts
printf(' Energy of neutron is =%.3f eV \n \n',E2)

R=E1/E2                 //Ratio of energies of proton to neutron
printf(' Ratio of energies of proton to neutron is =%.0f \n \n',R)
