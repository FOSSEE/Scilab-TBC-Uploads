clear
//
//
//

//Variable declaration
N=15000/2.54                    //number of lines(per cm)
lamda=6000*10**-8               //wavelength(cm)

//Calculation
d=1/N                           //slit width(m) 
m=d/lamda                       //possible order of spectra      

//Result
printf("\n possible order of spectra is %0.3f  ",m)
