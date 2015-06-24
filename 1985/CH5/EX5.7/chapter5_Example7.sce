clc
clear
//Input data
NA=0.16//Numerical aperture of the fibre
n1=1.45//Refractive index of the core 
d=(90*10^-6)//Diameter of the core in m
l=0.9*10^-6//Wavelength in m

//Calculations
n2=sqrt(n1^2-NA^2)//Refractive index of the cladding
q=asind(NA)//Acceptance angle in degrees
qx=(q-int(q))*60//For output
qy=(qx-int(qx))*60//For output
N=(4.9*((d*NA)/l)^2)//Number of modes propagating through the fibre
n=(int(N)/2)//The number of modes propagating through graded fibre

//Output
printf('Refractive index of the cladding is %3.3f \n Acceptance angle of the fibre is %3.0f degrees %3.0f minutes %3.2f seconds \n Number of modes propagating through the fibre is %3.1f \n The number of modes propagating through graded fibre is %3.0f',n2,q,qx,qy,N,n)
