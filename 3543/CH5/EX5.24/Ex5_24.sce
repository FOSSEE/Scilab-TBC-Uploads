// Example 5.24 
// Calculation of (a) wavelength (b) resposivity and (c) incident power
// Page no 487

clc;
clear;
close;

//Given data
e=0.7;                      // Efficiency
c=3*10^8;                   // Speed   of light
h=6.62*10^-34               // Planck constant
E=2.2*10^-19;               // Energy of photons
e1=1.6*10^-19;              // Electron charge 
// (a) Wavelength computation
lambda=h*c/E                // Wavelength of laser source
f=c/lambda;                      

// (b) Responsivity
R=e*(lambda*e1)/(h*c);                       

// (c) Incident power
Ip=2*10^-6;                  // Photocurrent
P=Ip/R;

//Display result on command window
printf("\n Wavelength of operation (micrometer)= %0.1f  ",lambda*10^6);
printf("\n Responsivity R (A/W) = %0.2f  ",R);
printf("\n output power P (microwWatt)= %0.2f  ",P*10^6);

