clc
clear
//INPUT DATA
n1=1.55//refractive index of optical fibre core
n2=1.47//refractive index of cladding

//CALCULATION
CA=asind(n2/n1)//critical angle in degree
NA=(sqrt((n1)^2-(n2)^2))//acceptance angle in degree
AA=asind(NA)//numerical aperture


//OUTPUT
printf('The critical angle is %3.2f degrees \n The numerical aperture is %3.4f \n The acceptance angle is %3.2f degrees',CA,NA,AA)
