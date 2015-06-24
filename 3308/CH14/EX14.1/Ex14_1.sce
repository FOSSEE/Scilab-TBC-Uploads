clc 
// Given that
d=150//in mm Diameter of the solid cylinder 
Hi=100 //in mm Height of the cylinder
u=0.2 // Cofficient of friction

// Sample Problem on page no. 344

printf("\n # Calculation of forging force # \n")

//cylinder is reduced in height by 50%
Hf=100/2
//Volume before deformation= Volume after deformation
r=sqrt((3.14*75^2*100)/(3.14*50))//r is the final radius of the cylinder
E=log(Hi/Hf)//absolute value of true strain
//given that cylinder is made of 304 stainless steel
Yf=1000 //in Mpa flow stress of the material from data in the book
F = Yf*(10^6)*3.14*(r^2)*10^-6*(1+((2*u*r)/(3*Hf)))//Forging Force
F1=F/(10^6)
printf("\n\n Forging force = %d MN",F1)


