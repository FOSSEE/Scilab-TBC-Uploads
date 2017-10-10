// Example 2.2
//computation of wavelenth of second emitted photon//
// Page no. 45

clc;
clear;
close;

//Given data
lambdaA=1400;//wavelength of absorbed photon//
lambdaB=1850;//wavelength of first emitted photon//

//Calculation for total energy of absorbed photon//
E=(12400/lambdaA);

//Calculation for energy of emitted photon of wavelenth lambdaB//
E1=(12400/lambdaB);

//Calculation for energy of second emitted  photon//
E2=E-E1;

//Calculation for wavelenth of second emitted  photon//
lambda2=(12400/E2);

//Displaying the result in command window
printf('\n Total energy of absorbed photon in eV = %0.3f eV',E);
printf('\n \n Energy of emitted photon of wavelength 1850 A = %0.3f eV',E1);
printf('\n \n Energy of the second emitted photon= %0.3f eV',E2);
printf('\n \n Wavelenth of second emitted  photon = %0.0f A',lambda2);

//The answers vary due to roundoff error//




