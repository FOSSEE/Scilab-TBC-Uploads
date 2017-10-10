clc//
//
//

//Variable declaration
c=3*10^8;     //velocity of light(m/s)
m=1.67*10^-27;     //mass of proton(kg)
h=6.626*10^-34;    //planck's constant

//Calculation
lamda=h*10/(m*c);     //de broglie wavelength(m)

//Result
printf("\n de broglie wavelength is %0.3f *10^-14 m",lamda*10^14)
