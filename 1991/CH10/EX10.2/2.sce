clc
clear
//input
la=0.535*10^-6//wavelength
nb=1.51//refractive index
dmin=34 //minimum deviation
//calculation
l=la/nb//wavelength of light
x=(nb-cosd(dmin/2))/sind(dmin/2)//refractive index of prism
y=acotd(x)
z=y*2
//output
printf("the wavelength of light is %3.3e m",l)
printf("\nthe angle of prism is %3.0d deg",z)
