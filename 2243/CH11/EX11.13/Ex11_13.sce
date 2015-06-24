clc();
clear;
//Given :
Eg1 = 0.72; // Energy gap for Ge in eV
Eg2 = 1.1; // Energy gap for Si in eV
Eg3 = 1.32; // Energy gap for GaAs in eV
// lambda = c/v = (c*h)/Eg   or lambda(A) = 12422/Eg (eV)
lambda1 = 12422/Eg1; // wavelength in A  (Ge)
lambda2 = 12422/Eg2; // wavelength in A  (Si)
lambda3 = 12422/Eg3; // wavelength in A  (GaAs)
printf("Wavelength for Ge = %.1f A \n",lambda1);
printf("Wavelength for Si = %.1f A \n",lambda2);
printf("Wavelength for GaAs = %.2f A",lambda3);
