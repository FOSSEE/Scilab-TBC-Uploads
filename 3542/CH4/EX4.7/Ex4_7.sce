// Example no 4.7
// To compute diffraction loss and identify Fresnel zone within which tip of obstruction lies for a)h=25m b)h=0 c)h=-25m
// Page no. 132

clc;
clear;

// Given data
lambda=1/3;                                         // Wavelength in meter
d1=1*10^3;                                          // Distance between transmitter and obstructing screen in m
d2=1*10^3;                                          // Distance between receiver and obstructing screen in m

// a) For h=25m
h=25;                                               // Effective heigth of obstruction screen in m
v=h*sqrt((2*(d1+d2))/(lambda*d1*d2));               // Fresnel diffraction parameter
printf('\n a) For h=25m Fresnel diffraction parameter v = %0.2f',v);
printf('\n From the plot of Knife-edge diffraction gain as a function of Fresnel diffraction parameter, diffraction loss is 22dB.');
Gd=-20*log10(0.225/v);                               // Diffraction loss for v>2.4 in dB
printf('\n Using numerical approximation, diffraction loss for v > 2.4  = %0.1f dB',Gd);
delta=(h^2/2)*((d1+d2)/(d1*d2));                    // Path length difference between direct and diffracted rays
n=(2*delta)/lambda;                                 // Number of Fresnel zones in which the obstruction lies
printf('\n Fresnel zone within which tip of obstruction lies = %0.2f',n);
printf('\n Therefore, the tip of obstruction completely blocks the first three Fresnel zones.');

// b) For h=0
h=0;                                                // Effective heigth of obstruction screen in m
v=h*sqrt((2*(d1+d2))/(lambda*d1*d2));               // Fresnel diffraction parameter
printf('\n \n b) For h=0 Fresnel diffraction parameter v = %0.0f',v);
printf('\n From the plot of Knife-edge diffraction gain as a function of Fresnel diffraction parameter, diffraction loss is 6dB.');
Gd=-20*log10(0.5-0.62*v);                           // Diffraction loss for v=0 in dB
printf('\n Using numerical approximation, diffraction loss for v=0 = %0.0f dB',Gd);
delta=(h^2/2)*((d1+d2)/(d1*d2));                    // Path length difference between direct and diffracted rays
n=(2*delta)/lambda;                                 // Number of Fresnel zones in which the obstruction lies
printf('\n Fresnel zone within which tip of obstruction lies = %0.0f',n);
printf('\n Therefore, the tip of obstruction lies in middle of first Fresnel zone.');

// c) For h=-25m
h=-25;                                                // Effective heigth of obstruction screen in m
v=h*sqrt((2*(d1+d2))/(lambda*d1*d2));                 // Fresnel diffraction parameter
printf('\n \n c) For h=-25m Fresnel diffraction parameter v = %0.2f',v);
printf('\n From the plot of Knife-edge diffraction gain as a function of Fresnel diffraction parameter, diffraction loss is approximately 1dB.');
Gd=0;                                                // Diffraction loss for v<-1 in dB
printf('\n Using numerical approximation, diffraction loss for v < -1 = %0.0f in dB',Gd);
delta=(h^2/2)*((d1+d2)/(d1*d2));                    // Path length difference between direct and diffracted rays
n=(2*delta)/lambda;                                 // Number of Fresnel zones in which the obstruction lies
printf('\n Fresnel zone within which tip of obstruction lies = %0.2f',n);
printf('\n Therefore, the tip of obstruction completely blocks the first three Fresnel zones but diffraction loss is negligible.');

