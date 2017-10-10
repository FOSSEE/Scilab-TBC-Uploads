clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
m=1.673*10^-27;    //mass of proton(kg)
v=10^4;      //velocity of proton(m/sec)
V1=100;       //potential difference in 1st case(V)
V2=10000;       //potential difference in 2nd case(V)
V3=6400;       //potential difference in 3rd case(V)


//Calculations
lamda1=12.25/sqrt(V1)        //de-broglie wavelength in 1st case(angstrom)
lamda2=12.25/sqrt(V2)        //de-broglie wavelength in 2nd case(angstrom)
lamda3=12.25/sqrt(V3)        //de-broglie wavelength in 3rd case(angstrom)
lamda4=12.25/sqrt(V2)        //de-broglie wavelength in 4th case(angstrom)
lamda5=h/(m*v);        //de-broglie wavelength of proton(m)

//Result
printf("\n de-broglie wavelength in 1st case is %0.3f angstrom",lamda1)
printf("\n de-broglie wavelength in 2nd case is %0.3f angstrom",lamda2)
printf("\n de-broglie wavelength in 3rd case is %0.3f angstrom",lamda3)
printf("\n de-broglie wavelength in 4th case is %0.3f angstrom",lamda4)
printf("\n de-broglie wavelength of proton is %0.4f angstrom",lamda5*10^10)
