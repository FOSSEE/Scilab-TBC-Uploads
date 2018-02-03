clear
//
//
//

//Variable declaration
t=500*10**-9      //thickness(m)
n1=0
n2=1
n3=2
n4=3
mew=1.33          //refractive index

//Calculation
lamda1=4*mew*t/((2*n1)+1)     //wavelength in infrared region(m)
lamda2=4*mew*t/((2*n2)+1)     //wavelength in infrared region(m)
lamda3=4*mew*t/((2*n3)+1)     //wavelength in visible region(m)
lamda4=4*mew*t/((2*n4)+1)     //wavelength in ultraviolet region(m)

//Result
printf("\n wavelength in infrared region is %0.0f  *10**-10 m",lamda1*10**10)
printf("\n wavelength in infrared region is %0.1f  *10**-10 m",lamda2*10**10)
printf("\n wavelength in visible region is %0.0f  *10**-10 m",lamda3*10**10)
printf("\n wavelength in ultraviolet region is %0.0f  *10**-10 m",lamda4*10**10)
printf("\n of all the wavelengths reflected %0.3f angstrom is the wavelength in the visible region",lamda3*10**10)
