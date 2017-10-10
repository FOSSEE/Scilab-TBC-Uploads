clear
//
//
//

//Variable declaration
a=100*10**-6
NA=0.3      //numerical aperture(m)
lamda=850*10**-9    //wavelength(m)

//Calculation
V_number=(2*%pi**2*a**2*NA**2/lamda**2)     //number of modes
printf("\n total number of modes is %0.3f",2*V_number)

//Result
