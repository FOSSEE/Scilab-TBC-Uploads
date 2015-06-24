clc
clear
//INPUT DATA
n1=1.545//refractive index of optical fibre core
n2=1.495//refractive index of cladding

//CALCULATION
CA=asind(n2/n1)//critical angle in degree
AA=asind(sqrt((n1)^2-(n2)^2))//acceptance angle in degree
NA=sind(AA)//numerical aperture

//OUTPUT
printf('The critical angle is %3.2f degrees \n The acceptance angle is %3.2f degrees \n The numerical aperture is %3.4f',CA,AA,NA)
