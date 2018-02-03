clear
//
//
//

//Variable declaration
lamda=500*10**-9      //wavelength(m)
D=2                   //distance of screen from slits(m)
l=5*10**-2            //distance(m)
n=100                 //number of fringes

//Calculation
beta1=l/n
d=lamda*D/beta1         //distance between slits(m)

//Result
printf("\n distance between slits is %0.0f  mm",d*10**3)
