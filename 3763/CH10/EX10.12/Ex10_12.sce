clear
//
//
//

//Variable declaration
a=25*10**-6
n1=1.48    //refractive index of core
delta=0.01    //refractive index difference
V=25     //Vnumber

//Calculation
lamda=2*%pi*a*n1*sqrt(2*delta)/V      //cutoff wavelength(m)

//Result
printf("\n cutoff wavelength is %0.3f  micro m",lamda*10**6)
