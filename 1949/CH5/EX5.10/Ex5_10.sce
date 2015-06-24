//Chapter-5,Example 5_10,Page 5-28
clc()

//Given Values:
me=9.108*10^-31      //mass of electron
mp=1.66*10^-27       //mass of proton
h=6.625*10^-34       //Planck's constant
lam=1*10^-10         //wavelength of electron and proton

//Calculations:

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
Ee1=h^2/(2*me*lam^2)       //Energy of electron in joules
Ee=Ee1/(1.6*10^-19)        //Energy of electron in electron-Volts
printf('Energy of electron is =%.2f eV \n \n',Ee)

Ep1=h^2/(2*mp*lam^2)       //Energy of photon in joules
Ep=Ep1/(1.6*10^-19)        //Energy of photon in electron-Volts
printf(' Energy of photon is =%.2f eV \n \n',Ep)
