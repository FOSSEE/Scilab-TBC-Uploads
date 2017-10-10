clc//
//
//

//Variable declaration
m=1.674*10^-27;     //mass of proton(kg)
h=6.626*10^-34;    //planck's constant
E=0.025*1.6*10^-19;    //energy(J)

//Calculation
lamda=h/sqrt(2*m*E);     //de broglie wavelength(m)

//Result
printf("\n de broglie wavelength is %0.3f nm",lamda*10^9)
