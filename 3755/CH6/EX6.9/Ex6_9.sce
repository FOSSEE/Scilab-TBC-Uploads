clear
//
//
//

//Variable declaration    
h=6.6*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
c=3*10^8;      //velocity of light(m/sec)
e=1.6*10^-19;        //charge of electron(c)
E=1000;      //energy of electron(eV)

//Calculations
lamda_p=h*c*10^10/(E*e);      //wavelength of photon(angstrom)
lamda_e=h*10^10/sqrt(2*m*E*e);     //wavelength of electron(angstrom)

//Result
printf("\n wavelength of photon is %0.1f angstrom",lamda_p)
printf("\n wavelength of electron is %0.2f angstrom",lamda_e)
