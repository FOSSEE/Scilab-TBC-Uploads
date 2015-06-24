clc();
clear;
//Given :
lambda = 5900 ; //Wavelength in A
delta_T = 150; // Temperature of the metal cylinder is now raised by 150 K
p = 20 ; // p is the number of rings shifted due to increase in t_n (t_n  is the thickness of the air film)
l = 5 ; // length of the metal cyclinder in  mm
mu = 1; //refractive index for air
//Increase in length  = (p*lambda)/2*mu
// 1 A = 1.0*10^-7 mm
delta_l = (p*lambda*10^-7)/2*mu; // increase in length in mm
//Linear expansivity of the metal of the cyclinder 
alpha = (delta_l)/(l*delta_T); // in 1/K
printf("The linear expansivity of the metal of the cylinder using Newtons rings apparatus is : %.1f x 10^-6/K ", alpha*10^6);
