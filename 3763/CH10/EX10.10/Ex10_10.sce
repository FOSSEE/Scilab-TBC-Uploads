clear
//
//
//

//Variable declaration
a=50
n2=1.5              //refractive index of cladding
n1=1.53    //refractive index of core
lamda0=1    //wavelength(micro m)

//Calculation
V_number=(2*%pi*a*sqrt(n1**2-n2**2)/lamda0)     //V number

n=V_number**2/2     //maximum number of modes

//Result
printf("\n maximum number of modes is %0.3f  ",n)
