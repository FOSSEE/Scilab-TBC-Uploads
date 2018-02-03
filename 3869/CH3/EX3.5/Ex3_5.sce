clear
//
//
//

//Variable declaration
t=0.9*10**-6      //thickness(m)
mewe=1.486            //refractive index of e-ray
mew0=1.658            //refractive index of o-ray

//Calculation
lamda1=4*t*(mew0-mewe)      //wavelength for half wave plate(m)
lamda2=2*t*(mew0-mewe)      //wavelength for quarter wave plate(m)

//Result
printf("\n wavelength for half wave plate is %0.3f  m",lamda1*10**9)
printf("\n wavelength for quarter wave plate is %0.3f  mm",lamda2*10**9)
