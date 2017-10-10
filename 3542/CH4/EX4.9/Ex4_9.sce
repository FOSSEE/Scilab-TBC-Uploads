// Example no 4.9
// To find a)the minimum mean square error b)the standard deviation about mean value c)received power at d=2 km d)the likelihood that the received signal level at 2 km e) the percentage of  area within 2 km 
// Page no. 143

clc;
clear all;

// Given data
d0=100;                                        // First receiver distance in meter
d1=200;                                        // Second receiver distance in meter
d2=1000;                                       // Third receiver distance in meter
d3=3000;                                       // Fourth receiver distance in meter
p0=0;                                          // Receved power of first receiver in dBm
p1=-20;                                        // Receved power of second receiver in dBm
p2=-35;                                        // Receved power of third receiver in dBm
p3=-70;                                        // Receved power of forth receiver in dBm

// a)To find the minimum mean square error
n=2887.8/654.306;                              // Loss exponent after differentiating and equating the squared error function with zero

// Displaying the result in command window
printf('\n Loss exponent = %0.0f',n);

// b)To find the standard deviation about mean value
P0=-10*n*log10(d0/100);                        // The estimate of p0 with path loss model
P1=-10*n*log10(d1/100);                        // The estimate of p1 with path loss model
P2=-10*n*log10(d2/100);                        // The estimate of p2 with path loss model
P3=-10*n*log10(d3/100);                        // The estimate of p3 with path loss model
J=(p0-P0)^2+(p1-P1)^2+(p2-P2)^2+(p3-P3)^2;     // Sum of squared error
SD=sqrt(J/4);                                  // The standard deviation about mean value

// Displaying the result in command window
printf('\n The standard deviation about mean value = %0.2f dB',SD);
// The decimal point is not given in the answer given in book.

// c)To find received power at d=2 km
d=2000;                                         // The distance of receiver
P=-10*n*log10(d/100);                           // The estimate of p2 with path loss model

// Displaying the result in command window
printf('\n The received power (at d=2 km) = %0.2f dBm',P);
// Answer is varying due to round off error

// d)To find the likelihood that the received signal level at 2 km
gam=-60;                                         // The received power at 2km will be greater than this power
z=(gam-P)/SD;
Pr=(1/2)*(1-erf(z/sqrt(2)));                     // The probability that received signal will be greater than -60dBm

// Displaying the result in command window
printf('\n The probability that received signal will be greater than -60dBm = %0.1f percent',Pr*100);
// Answer is varying due to round off error

// e)To find the percentage of  area within 2 km 
A=92;                                            // From figure 4.18, area receives coverage above -60dBm

// Displaying the result in command window
printf('\n The percentage of  area within 2 km = %0.0f percent',A);


