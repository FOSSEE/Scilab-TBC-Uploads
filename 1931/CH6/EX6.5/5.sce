clc
clear
//INPUT DATA
NA=0.22//numerical aperture of optical fibre
no=0.012//refractive index difference

//CALCULATION
n1=(NA/(sqrt(2*no)))//The refractive index of the core of a fibre
n2=n1*(1-no)//The refractive index of the cladding

//OUTPUT
printf('The refractive index of the core of a fibre is %3.3f \n The refractive index of the cladding is %3.3f',n1,n2)
