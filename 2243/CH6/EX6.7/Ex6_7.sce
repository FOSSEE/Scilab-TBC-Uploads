clc();
clear;
//Given:
//Photoelectric effect
lambda1 = 2000; //wavelength in A
phi1 = 2.3;// Work function in eV
m = 9.1*10^-31; //electron mass in kg
E1 = 12422/lambda1; // Energy of photon in eV
c = 3*10^8; //Speed of light in m/s
Ee1 = (12422/lambda1)- phi1; // energy of an electron in eV
pe1 = sqrt(2*m*Ee1*1.6*10^-19); //electron momentum in kg m/s
pp1 = (E1*1.6*10^-19)/c ; // Momentum of incident photon in kg m/s
ratio1 = pe1/pp1 ; // (pe/pp)
//Compton effect
lambda2 = 1; // wavelength in A
deltalambda = 0.048; // Compton shift in A
E2 = 12422/lambda2; // Energy of photon in eV
Ee2 = (12422/lambda2)- (12422/(lambda2+deltalambda));//energy of an electron in eV
pe2 = sqrt(2*m*Ee2*1.6*10^-19); //electron momentum in kg m/s
pp2 = (E2*1.6*10^-19)/c ; // Momentum of incident photon in kg m/s
ratio2 = pe2/pp2 ; // (pe/pp)
printf("Photoelectric effect :\n\n");
printf("Electron energy : %.1f eV \n Electron momentum  : %.2f x 10^-24 kg m/s \n Momentum of incident photon : %.2f x 10^-27 kg m/s \n pe/pp : %.0f \n\n",Ee1,pe1*10^24,pp1*10^27,ratio1);
printf("Compton  effect :\n\n");
printf("Electron energy : %.1f eV \n Electron momentum  : %.1f x 10^-23 kg m/s \n Momentum of incident photon : %.2f x 10^-24 kg m/s \n pe/pp : %.2f \n\n",Ee2,pe2*10^23,pp2*10^24,ratio2);
