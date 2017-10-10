clear
//
//
//

//Variable declaration    
h=6.6*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
c=3*10^8;      //velocity of light(m/sec)
lamda=0.82*10^-10;    //wavelength(m)

//Calculations
E=h*c/lamda;          //energy(J)
lamda=h*10^10/sqrt(2*m*E);     //wavelength of photo-electron(angstrom)

//Result
printf("\n wavelength of photo-electron is %0.1f angstrom",lamda)
