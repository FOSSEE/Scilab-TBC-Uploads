clear
//
//
//

//Variable declaration
lamda=589.3*10**-9      //wavelength(m)
mewe=1.65833            //refractive index of e-ray
mew0=1.48640            //refractive index of o-ray

//Calculation
t1=lamda/(2*(mewe-mew0))     //thickness of half wave plate(m)
t2=lamda/(4*(mewe-mew0))     //thickness of quarter wave plate(m)

//Result
printf("\n thickness of half wave plate is %0.7f  mm",t1/10**-3)
printf("\n thickness of quarter wave plate is %0.6f  mm",t2/10**-3)
