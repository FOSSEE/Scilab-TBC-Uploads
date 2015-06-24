//Chapter-5,Example 5_8,Page 5-27
clc()

//Given Values:
mn=1.676*10^-27        //mass of neutron
me=9.1*10^-31          //mass of electron
h=6.625*10^-34         //Planck's constant

//Calculations:
//Part 1:
En1=0.025             //Energy in eV of neutron
En=En1*(1.6*10^-19)   //Energy in joules

lam1=h/sqrt(2*mn*En)     //wavelength of a beam of neutron
printf('wavelength of a beam of neutron is =%.13f m \n \n',lam1)

//Part 2:
lam2=2*10^-10            //wavelength of electron and photon

//we know,  lam=h/sqrt(2*m*E)     //de Broglie wavelength
Ee1=h^2/(2*me*lam2^2)     //Energy of electron in joules
Ee=Ee1/(1.6*10^-19)       //Energy of electron in electron-Volts
printf(' Energy of electron is =%.3f eV \n \n',Ee)

p1=h/lam2               //momentum of electron
printf(' Momentum of electron is =%.27f kg.m/s \n \n',p1)

C=3*10^8                //Velocity of light
Ep=h*C/lam2             //Energy of photon in joules
printf(' Energy of photon is =%.19f Joules \n \n',Ep)

p2=h/lam2               //momentum of photon
printf(' Momentum of photon is =%.27f kg.m/s \n \n',p2)
