clear
//
//
//

//Variable declaration
lamda=5460*10**-8      //wavelength(cm)
f=400            //focal length(cm)
n=5
mew=1.5          //refractive index

//Calculation
R=2*f*(mew-1)      //radius(cm)
Dn=sqrt(2*((2*n)-1)*lamda*R)    //diameter of 5th fringe(cm)

//Result
printf("\n diameter of 5th fringe is %0.2f  m",Dn)
