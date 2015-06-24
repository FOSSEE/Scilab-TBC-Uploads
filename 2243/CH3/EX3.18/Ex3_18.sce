clc();
clear;
//Given :
lambda = 5500; // Wavelength in A
mu_f = 1.38; // refractive index for MgF2
mu_f1 = 1.48; // refractive index for lucite
//The minimum thickness 
t = lambda/(4*mu_f) ; // thickness in A
printf("The minimum thickness = %.1f A\n\n",t);
// Resultant reflected intensity = I = 2*I_0*(1 + cos(alpha)) 
// alpha = (2*pi/lambda)*(path difference) 
alpha1 = (2*%pi/lambda)*(2*mu_f*t); // angle in radians
alpha2 = (2*%pi/lambda)*(2*mu_f1*t); // angle in radians
printf(" alpha = %.3f for MgF2 and %.3f for lucite\n\n",alpha1,alpha2);
printf(" For MgF2 : I = (%f)*I_0\n\n",2*(1+cos(alpha1)));
printf(" For lucite : I = (%.3f)*I_0\n\n",2*(1+cos(alpha2)));
printf("For Lucite : (%.3f)*I_0 , indicates %.1f percentage  of the incident light is reflected ,so it is less suitable for coating.",2*(1+cos(alpha2)), 100*2*(1+cos(alpha2)));


