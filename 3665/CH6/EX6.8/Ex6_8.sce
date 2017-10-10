clc//
//
//

//Variable declaration
m=9.1*10^-31;     //mass of electron(kg)
h=6.626*10^-34;    //planck's constant
E=2000*1.6*10^-19;    //energy(J)

//Calculation
lamda=h/sqrt(2*m*E);     //de broglie wavelength(m)

//Result
printf("\n de broglie wavelength is %0.4f nm",lamda*10^9)
