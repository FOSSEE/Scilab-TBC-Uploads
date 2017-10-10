// Example no 4.8
// To determine a)the loss due to knife-edge diffraction b)the heigth of obstacle required to induce 6dB diffraction loss
// Page no. 133

clc;
clear;

// Given data
f=900*10^6;                                                  // Operating frequency in Hz
c=3*10^8;                                                    // Speed of ligth in m/s
hr=25;                                                       // Heigth of receiver in m
ht=50;                                                       // Heigth of transmitter in m
h=100;                                                      // Heigth of obstruction in m
d1=10*10^3;                                                 // Distance between transmitter and obstruction in m
d2=2*10^3;                                                  // Distance between receiver and obstruction in m

// a)To determine the loss due to knife-edge diffraction
lambda=c/f;                                                // Operating wavelength in m
ht=ht-hr;                                                  // Hegth of transmitter after subtracting smallest heigth (hr)
h=h-hr;                                                    // Heigth of obstruction after subtracting smallest heigth (hr)
bet=atan((h-ht)/d1);                                       // From geometry of environment in rad
gamm=atan(h/d2);                                           // From geometry of environment in rad
alpha=bet+gamm;                                            // From geometry of environment in rad
v=alpha*sqrt((2*d1*d2)/(lambda*(d1+d2)));                  // Fresnel diffraction parameter

// the loss due to knife-edge diffraction
Gd=-20*log10(0.225/v);                                     // Diffraction loss for v>2.4 in dB

// Displaying the result in command window
printf('\n The loss due to knife-edge diffraction = %0.1f dB',Gd);

// b)To determine the heigth of obstacle required to induce 6dB diffraction loss
Gd=6;                                                      // Diffraction loss in dB
v=0;                                                       // Fresnel diffraction parameter from the plot of Knife-edge diffraction gain as a function of Fresnel diffraction parameter
// v=0 is possible only if alpha=0. Therefore bet=-gamm
// By considering this situation, the geometry of environment provides (h/d2)=(ht/(d1+d2))
h=(ht*d2)/(d1+d2);                                         // the heigth of obstacle required to induce 6dB diffraction loss

// Displaying the result in command window
printf('\n The heigth of obstacle required to induce 6dB diffraction loss = %0.2f m',h);

