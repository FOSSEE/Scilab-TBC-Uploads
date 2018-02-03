clear
//
//
//

//Variable declaration
D=180             //separation between screen and slit(cm)
d=0.04            //separation between slits(cm)
beta1=0.3          //fringe width(cm)

//Calculation
lamda=(beta1*d*10**4/D)      //wavelength(cm)


//Result
printf("\n wavelength is %0.0f  angstrom",lamda*10**4)
