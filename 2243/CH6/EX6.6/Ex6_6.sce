clc();
clear;
//Given :
theta = 90; //angle in degrees
m0 = 9.1*10^-31; //electron mass in kg
c = 3*10^8; //Speed of light in m/s
h = 6.625*10^-34; //planck's constant in Js
deltalambda = ((h*(1-cosd(theta)))/(m0*c))*10^10; // in A
//(a) Microwave range
lambda1 = 3.0 ;// wavelength in cm
//lambda1 = 3.0*10^8 A , 1 cm = 1*10^8 A
pc1 = ((deltalambda)*100)/((lambda1*10^8) + deltalambda) ;//percent change in photon energy
printf("Percentage change in energy for radiation in microwave range is : %.0f x 10^-9 \n",pc1*10^9);
//(b) Visible range
lambda2 = 5000 ;// wavelength in A
pc2 = ((deltalambda)/(lambda2 + deltalambda))*100 ;//percent change in photon energy
printf("Percentage change in energy for radiation in visible range is : %.0f x 10^-4 \n",pc2*10^4);
//(c) X-ray range
lambda3 = 1 ; //wavelength in A
pc3 = ((deltalambda)/(lambda3 + deltalambda))*100 ;//percent change in photon energy
printf("Percentage change in energy for radiation in X-ray range is : %.1f\n",pc3);
//(d)Gamma ray range
lambda4 = 0.012 ;// wavelength in A
pc4 = ((deltalambda)/(lambda4 + deltalambda))*100 ;//percent change in photon energy
printf("Percentage change in energy for radiation in Gamma range is : %.1f\n",pc4);

