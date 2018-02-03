clear
//
//
//

//Variable declaration
lamda=500*10**-9      //wavelength(m)
mewe=1.553            //refractive index of e-ray
mew0=1.544            //refractive index of o-ray

//Calculation
t=lamda/(2*(mewe-mew0))     //thickness of quartz half wave plate(m)

//Result
printf("\n thickness of quartz half wave plate is %0.4f  mm",t/10**-3)
