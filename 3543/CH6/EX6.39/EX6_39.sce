// Example 6.39
// Calculation of a) operating wavelength b) incidence optical power
// Page no 495

clc;
clear;
close;

//Given data
n=0.60                            // Quantum efficiency
E=1.5*10^-19;                    // Photons of energy
e=1.602*10^-19;                  // Charge of an electron
h=6.626*10^-34;                  // Planck constant 
c=3*10^8;                        // Velocity of light
I=2*10^-6;                      // Photocurrent


// a)Operating wavelength
lambda=(h*c)/E;
lambda=lambda*10^6;

// b)Incident optical power
R=(n*e)/E;
P=I/R;
P=P*10^6;


//Displaying results in the command window            
printf("\n Wavelength of photodiode (in micrometer)= %0.2f  ",lambda);
printf("\n Incident optical power(in microWatt) = %0.2f  ",P);

// The answers vary due to round off error
