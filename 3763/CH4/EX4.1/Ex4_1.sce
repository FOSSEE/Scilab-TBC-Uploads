clear
//
//
//

//Variable declaration
E=10**4*1.6*10**-19      //kinetic energy(J)
m=1.675*10**-27     //mass(kg)
h=6.625*10**-34     //planck's constant

//Calculation
v=sqrt(2*E/m)     //velocity(m/s)
lamda=h/(m*v)          //de broglie wavelength(m)

//Result
printf("\n de broglie wavelength is %0.5f  angstrom",lamda*10**10)
