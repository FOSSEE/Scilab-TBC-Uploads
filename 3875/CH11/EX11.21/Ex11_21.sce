clc;
clear;
lambda=0.171 //wavelength of X-ray in nm
tetha_1=30 //Braggs angle in degree
tetha_2_degrees=35 //part of Braggs angle in degrees
tetha_2_minutes=17 //part of Braggs angle in minutes

//calculation
//case(1)((Assuming metal is bcc for plane 111))
h=1 //x intercept of the parallel plane 
k=1 //y intercept of the parallel plane 
l=0 //z intercept of the parallel plane 
d1_110=lambda/(2*sind(tetha_1)) //distance in nm
a1=d1_110*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter for Bragg reflections from plane %d%d%d is = %1.3f nm\n",h,k,l,a1)

//case(2)(Assuming metal is bcc for plane 200)
h=2 //x intercept of the parallel plane 
k=0 //y intercept of the parallel plane 
l=0 //z intercept of the parallel plane 
tetha_2_decdeg=tetha_2_degrees+(tetha_2_minutes/60)
d1_200=lambda/(2*sind(tetha_2_decdeg))
a2=d1_200*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter for Bragg reflections from plane %d%d%d is = %1.3f nm\n",h,k,l,a2)
mprintf("The lattice parameters %1.3f nm and %1.3f nm are not equal,hence metal is not bcc.\n",a1,a2)


//case(3)(Assuming metal is fcc for plane 111)
h=1 //x intercept of the parallel plane 
k=1 //y intercept of the parallel plane 
l=1 //z intercept of the parallel plane 
d2_111=lambda/(2*sind(tetha_1))
a3=d2_111*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter for Bragg reflections from plane %d%d%d is = %1.3f nm\n",h,k,l,a3)


//case(4)(Assuming metal is fcc for plane 222)
h=2 //x intercept of the parallel plane 
k=0 //y intercept of the parallel plane 
l=0 //z intercept of the parallel plane 
tetha_2_decdeg=tetha_2_degrees+(tetha_2_minutes/60)
d2_200=lambda/(2*sind(tetha_2_decdeg))
a4=d2_200*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter for Bragg reflections from plane %d%d%d is = %1.3f nm\n",h,k,l,a4)
mprintf("The lattice parameters %1.3f nm and %1.3f nm are equal,hence metal is fcc.\n",a3,a4)

//for atomice diameter we have
a3=0.296 //lattice parameter in nm
D=a3/sqrt(2) //since a3 and a4 are the same values
mprintf("The atomic diameter is = %1.4f nm",D) 
