clc
clear
//INPUT DATA
n2=1.55//refractive index of cladding
no=1.33//refractive index of water
NA=0.20//numerical aperture of optical fibre

//CALCULATION
n1=sqrt((n2)^2+(NA)^2)//refractive index of optical fibre
NAW=(sqrt((n1)^2-(n2)^2)/no)//numerical aperture when fibre is in water
AA=asind(NAW)//Acceptance angle for the fibre in water in degrees

//OUTPUT
printf('The refractive index of optical fibre is %3.4f\n The numerical aperture when fibre is in water is %3.4f\n The Acceptance angle for the fibre in water is %3.2f degrees',n1,NAW,AA)
