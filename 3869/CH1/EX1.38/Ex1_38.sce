clear
//
//
//

//Variable declaration
D=50            //separation between screen and slit(cm)
x=0.2           //fringe shift(cm)
d=0.1           //separation between slits(cm)
mew=1.58        //refractive index

//Calculation
tow=x*d/(D*(mew-1))     //thickness of mica sheet(cm)

//Result
printf("\n thickness of mica sheet is %0.3f  *10**-4 cm",tow*10**4)
