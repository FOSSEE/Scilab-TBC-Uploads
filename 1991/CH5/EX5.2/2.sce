clc
clear
//INPUT DATA
np=1.39 //refractive index in air
a=62 //refracting angle of prism
//calculation
x=1/np
c=asind(x)//critical angle
r=a-c
i= np* sind(r)//snells law
i1=asind(i)
A=2*c//greatest prism angle allowing refraction
//output
printf("angle of incidence producing maximum deviation is %3.3f deg",r)
printf(" \n greatest prism angle allowing refraction is %3.3f deg",A)
