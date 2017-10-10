// Example 2.3
//computation of number of photons per second emitted by lamp//
// Page no. 46

clc;
clear;
close;

//Given data
lambda=2537;//wavelength of absorbed photon//


//Calculation for total energy of absorbed photon//
E=(12400/lambda);

//Calculation for radiated power//
P_radiated=(0.05/(1.60*10^-19));

//Calculation for number of photons per second//
photon=(P_radiated/E);

//Displaying the result in command window
printf('\n Total energy per photon = %0.2f eV/photon',E);
printf('\n \n Radiated Power = %0.2f x 10^17 eV/sec',P_radiated*10^-17);
printf('\n \n The number of photons per second = %0.2f x 10^16 photons/second',photon*10^-16);

//The answers vary due to roundoff error//





