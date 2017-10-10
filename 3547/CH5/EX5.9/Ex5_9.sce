// Example 5.9
// To find the in-phase and quadrature components of the current of a polarization modulated (PM) QPSK signal
// Page no. 241

clc;
clear;

// Given data
theta1=%pi/4;
Sx=expm(%i*theta1);                                                 // Signal data in x-polarization
theta2=(5*%pi)/4;
Sy=expm(%i*theta2);                                                 // Signal data in y-polarization
PLO=10;                                                             // Local oscillator power in mW from Example 5.8
Pr=0.1585;                                                          // Power at receiver in mW from Example 5.8
R=0.9;                                                              // Reflectivity

// The complex photocurrent corresponding to x-polarization 
Ix= (R*sqrt(Pr*PLO))*Sx/2;                                         // The complex photocurrent corresponding to x-polarization
Iix=real(Ix);                                                      // In-phase component of phtocurrent corresponding to x-polarization
Iqx=-imag(Ix);                                                     // Quadrature component of phtocurrent corresponding to x-polarization

// The complex photocurrent corresponding to y-polarization 
Iy= (R*sqrt(Pr*PLO))*Sy/2;                                         // The complex photocurrent corresponding to y-polarization
Iiy=real(Iy);                                                      // In-phase component of phtocurrent corresponding to y-polarization
Iqy=-imag(Iy);                                                     // Quadrature component of phtocurrent corresponding to y-polarization

// Display result on command window
printf('\n In-phase component of phtocurrent corresponding to x-polarization = %0.4f mA',Iix);
printf('\n Quadrature component of phtocurrent corresponding to x-polarization = %0.4f mA',Iqx);
printf('\n In-phase component of phtocurrent corresponding to y-polarization = %0.4f mA',Iiy);
printf('\n Quadrature component of phtocurrent corresponding to y-polarization = %0.4f mA',Iqy);
