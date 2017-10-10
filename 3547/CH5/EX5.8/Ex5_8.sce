// Example no.5.8
// To find the in-phase and quadrature components of the current of a balanced IQ receiver.
// Page no.238

clc;
clear;

// Given data
PLO=10;                                         // Local oscillator power in mW from Example 5.7a
Pr=0.1585;                                      // Power at receiver in mW
R=0.9;                                          // Responsivity in A/W
st=complex((-1/sqrt(2)),(1/sqrt(2)));           // The QPSK transmitted signal
Ii=R*sqrt(Pr*PLO)*real(st);                     // The in-phase component of the current in mA
Iq=-R*sqrt(Pr*PLO)*imag(st);                    // The quadrature component of the current in mA

// Display result on command window
printf('\n The in-phase component of the current = %0.4f mA',Ii)
printf('\n The quadrature component of the current = %0.4f mA',Iq)

