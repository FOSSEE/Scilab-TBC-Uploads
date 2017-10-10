clc//
//
//

//Variable declaration
h=6.62*10^-34;     //planck's constant(J sec)
c=3*10^8;     //velocity of light(m/sec)
Eg=1.43*1.6*10^-19;    //energy gap(J)

//Calculation
lamda=h*c*10^6/Eg;    //wavelength of radiation(micro m)

//Result
printf("\n wavelength of radiation is %0.3f micro m",lamda)
