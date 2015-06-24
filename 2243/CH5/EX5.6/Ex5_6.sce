clc();
clear;
//Given :
mu_o = 1.544; //Refractive index for ordinary ray
mu_e = 1.553;//Refractive index for extraordinary ray
lambda = 5890;//Wavelength in A
//(a)Plane polarised light :
//lambda is converted from A to cm , 1 A = 1.0*10^-8 cm
t1 = (lambda*10^-8)/(2*(mu_e-mu_o));//Minimum thickness in cm
//(b)Circularly polarised light :
t2 = (lambda*10^-8)/(4*(mu_e-mu_o));// Minimum thickness in cm
printf("Minimum thickness :\n\n");
printf("(a)Plane polarised light : %.2f x 10^-3 cm \n\n",t1*10^3);
printf("(b)Circularly polarised light : %.2f x 10^-3 cm ",t2*10^3);

