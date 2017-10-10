clear
//
//
//

//Variable declaration
d=5*10**-6     //diameter(m)
n2=1.447              //refractive index of cladding
n1=1.45    //refractive index of core
lamda=1*10**-6    //wavelength(m)

//Calculation
NA=sqrt(n1**2-n2**2)      //numerical aperture
N=4.9*(d*NA/lamda)**2     //total number of guided modes

//Result
printf("\n total number of guided modes is %0.3f  ",N)
