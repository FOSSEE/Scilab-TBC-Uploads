clc
clear
//input
a=4//widge dimension
b=64//edge of tissue
c=33//bright fringes
l=0.53*10^-6 //wavelength
//calculation
m=b*c/a//number of bright fringes
t=m*l/2//thickness
//output
printf("the thickness is %3.3e m and hence number of fringes also increases",t)
