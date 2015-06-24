clc();
clear;
//Given :
// Now, the intensity  distribution  is given by :
// I = I_1 + I_2 + 2*(I_1*I_2)^0.5 *cos(alpha1- alpha2) , Using alpha = alpha1 - alpha2  and I_1 = I_2 = I_0 
// I = 2*I_0*(1+ cos(alpha)) 
nu = 1.2 * 10^6 ; // frequency in Hz
c = 3*10^8 ; // velocity of light in m/s
lambda = c/nu ; // wavelength in m
d = 500; // two identical vertical dipole antenna spaced 500 m apart
// Directions along which  the intensity is maximum :
printf("Maximum Intensity \n\n");
for n= 0 :2
theta = asind((n*lambda)/d);// in degrees
printf("---> theta = %d degrees\n",theta);
end
// Directions for which intensity is minimum :
n1 =0;
theta1 = asind(((n1 + (1/2))*lambda)/d);//in degrees
printf("Minimum Intensity \n\n");
printf("--> theta = %.1f degrees\n",theta1);



