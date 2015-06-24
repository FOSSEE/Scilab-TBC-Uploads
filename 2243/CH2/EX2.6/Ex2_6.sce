clc();
clear;
//(a)Tunning fork 
nu= 440; // Frequency in Hz
V=340; // velocity of sound in air in m/s
lambda= V/nu ;// Wavelength of sound wave in m
k= 2*%pi/lambda; // Wave number in m
//(b) Red Light 
nu1 = 5*10^14;// Frequency of Red light in Hz
V1 = 3*10^8;//Velocity of light in m/s
lambda1= V1/nu1; //Wavelength of light wave in m
k1= 2*%pi/lambda1; // Wave number in m
printf("For Sound wave : \n\n Frequency: %d Hz \n Velocity: %d m/s \n Wavelegth: %.3f m\n Wave number : %.2f m \n Wave Equation for Sound wave: y =  A*sin((%.2f*x)-(%.3f*t)) \n\n",nu,V,lambda,k,k,(2*%pi*nu));
printf("For Light wave : \n\n Frequency: %.0f x 10^14 Hz \n Velocity: %d x 10^8 m/s \n Wavelegth: %.1f x 10^-7 m\n Wave number : %.2f x 10^7 m \n Wave Equation for Sound wave: y =  A*sin((%.2f*10^7*x)-(%.1f*10^15*t)) \n\n",nu1*10^-14,V1*10^-8,lambda1*10^7,k1*10^-7,k1*10^-7,(2*%pi*nu1*10^-15));
