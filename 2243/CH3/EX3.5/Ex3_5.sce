clc();
clear;
//(a) 
//Given:
lambda = 5890;// Wavelength in A
l = 5.89; //thickness of the film in mu m
mu = 1.35; //refractive index
delta = mu*l;// optical path in the medium  in m
//(b) (i)Number of waves in the medium
//1 angstrom = 1.0*10^-10 m and 1 mu m = 1*10^-6 m
N= (l*10^-6)/(lambda*10^-10/mu); 
//the distance in vaccum for those waves :
delta1 =N*lambda*10^-10; // optical path in m
//(b) (ii)Phase difference in the medium 
//1 angstrom = 1.0*10^-10 m and 1 mu m = 1*10^-6 m
phi = ((2*%pi)/(lambda*10^-10/mu))*(l*10^-6) ;
printf("Optical path = %.4f mu m\n",delta);
printf("Number of waves : %.1f\n",N);
printf("The distance in vaccum for those waves is : %.4f mu m  \n",delta1*10^6);
printf("Phase difference = %.3f\n",phi);

