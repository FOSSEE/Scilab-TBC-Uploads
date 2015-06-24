//clear//
//Caption:Program TO Calculate Frequency Spacing & Wavelength Spacing
//Example4.8
//page160
clear;
clc;
Lamda = 850e-9 //Emission wavelength of LASER diode
n = 3.7 //refractive index of LASER diode
L = 500e-6//length of LASER diode
C = 3e08 //velocity of Light in free space
delta_frequency = C/((2*L)*n);
delta_Lamda = (Lamda^2)/((2*L)*n);
Half_power = 2e-09; //half power point 3 nanometer
sigma = sqrt(-(Half_power^2)/(2*log(0.5)));
disp(delta_frequency,'Enter the frequency spacing in Hertz');
disp(delta_Lamda,'Enter the waelength spacing in metres');
disp(sigma,'spectral width of the gain');
//RESULT
//Enter the frequency spacing in Hertz   
//   8.108D+10  
//Enter the waelength spacing in metres   
//  1.953D-10 
//spectral width of the gain   
//     1.699D-09   
