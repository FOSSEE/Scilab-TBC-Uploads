clc
clear
//input
n2=1.36//refractive index
N=5000*100 //number of lines per m
t=23 //angle of diffraction
//calculation
l=sind(t)/(n2*N)//applying dsinx=nl,calculating wavelength 
x=N*l//angle of diffraction
y=asind(x)
//output
printf("the wavelength of light in methanol is %3.3e m",l)
printf("\n the angle of diffraction is %3.3f degrees",y)
