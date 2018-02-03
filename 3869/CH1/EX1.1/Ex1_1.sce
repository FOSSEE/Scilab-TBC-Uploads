clear
//
//
//

//Variable declaration
d=0.08*10**-2         //distance between slits(m)
beta1=6*10**-4         //fringe width(m)
c=3*10**8             //velocity of light(m/sec)
new=8*10**11*10**3    //frequency(Hz)

//Calculation
lamda=c/new           //wavelength(m)
D=beta1*d/lamda        //distance of screen from slits(m)

//Result
printf("\n distance of screen from slits is %0.3f  m",D)
