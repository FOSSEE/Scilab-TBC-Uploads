// Example 9.3
// Calculation of a) The lengths of the adjacent waveguides and b) phase shift phi1 and phi2.
// Page no 400

clc;
clear;
close;

//Given data

p=0;                     // Power per channel
fl=0.2;                  // Fiber loss
m1=100;                  // Wavelength
m2=110;
lambda1=1550*10^-9;
lambda2=1550.8*10^-9;
c=3*10^8;               // Velocity of light
b0=5.87*10^6;
b1=4.86*10^-9;

// a) The lengths of the adjacent waveguides
l1=(2*%pi*m1)/b0;
l2=(2*%pi*m2)/b0;


// b) Phase shift phi1 and phi2.
dfdl=-(c/lambda1^2);
dbdl=2*%pi*b1*dfdl;
phi1=2*%pi*m1+(lambda2-lambda1)*l1*dbdl;
phi2=2*%pi*m2+(lambda2-lambda1)*l2*dbdl;

//Displaying results in the command window            
printf("\n The lengths of the adjacent waveguides  = %0.2f micrometer ",l1*10^6);
printf("\n The lengths of the adjacent waveguides  = %0.2f micrometer",l2*10^6);
printf("\n Phase shift phi1   = %0.2f x 10^2 rad ",phi1*10^-2);
printf("\n Phase shift phi2 = %0.2f  x 10^2 rad",phi2*10^-2);

// The answers vary due to round off error
