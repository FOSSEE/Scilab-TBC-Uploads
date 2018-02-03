clear
//
//
//

//Variable declaration
lamda=600*10**-9      //wavelength(m)
mewe=1.5533            //refractive index of e-ray
mew0=1.5442            //refractive index of o-ray

//Calculation
t=lamda/(4*(mewe-mew0))     //thickness of quartz half wave plate(m)

//Result
printf("\n thickness of quartz half wave plate is %0.4f  mm",t/10**-3)
