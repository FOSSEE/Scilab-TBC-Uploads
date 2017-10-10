//Example 4.3, Page number 4.32

clc;clear;close

// variable declaration
C=3*10**8                     // Velocity of light m/s
W=632.8*10**-9                // wavelength in m
P=2.3 
t=1
h=6.626*10**-34              // Planck constant 
S=1*10**-6

// Calculations
V=C/W                        // Frequency
n=((P*10**-3)*t)/(h*V)       // no.of photons emitted
PD=P*10**-3/S                // Power density

// Result
printf("Frequency = %0.2e Hz",V)
printf("\nno.of photons emitted = %0.2e photons/sec",n)
printf("\nPower density = %0.1f kWm^-2",(PD/1000))
