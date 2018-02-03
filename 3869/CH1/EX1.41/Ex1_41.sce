clear
//
//
//

//Variable declaration
D=80             //separation between screen and slit(cm)
d=0.1            //separation between slits(cm)
beta1=0.04         //fringe width(cm)

//Calculation
lamda=beta1*d/D      //wavelength(cm)

//Result
printf("\n wavelength is %0.0f  angstrom",lamda*10**8)
