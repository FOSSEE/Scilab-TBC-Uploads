// chapter 7
// example 7.9
// calculate polarisability due to permanent dipole moment and due to deformation of the molecules
// page 190-191
clear;
clc;
// given
alpha1=2.5E-39; // in C^2-m/N (dielectric constant at 300K)
alpha2=2.0E-39; // in C^2-m/N (dielectric constant at 400K)
T1=300; // in K(first temperature)
T2=400; // in K(second temperature)
//calculate
// since alpha=alpha_d+alpha0 and alpha0=Beta/T
// therefore alpha=alpha_d+(Beta/T)
// since alpha1=alpha_d+(Beta/T1)  and alpha2=alpha_d+(Beta/T2)
// therefore alpha1-apha2=Beta*((1/T1)-(1/T2))
// or Beta= (alpha1-apha2)/ ((1/T1)-(1/T2))
Beta= (alpha1-alpha2)/ ((1/T1)-(1/T2)); // calculation of Beta
alpha_d=alpha1-(Beta/T1); // calculation of polarisability due to defromation
alpha0_1=Beta/T1; // calculation of polarisability due to permanent dipole moment at 300K
alpha0_2=Beta/T2;  // calculation of polarisability due to permanent dipole moment at 400K
printf('\nThe polarisability due to permanent dipole moment at 300K is \t %1.2E C^2-m/N',alpha0_1);
printf('\nThe polarisability due to permanent dipole moment at 400K is \t %1.2E C^2-m/N',alpha0_2);
printf('\n\nThe polarisability due to deformation of the molecules is \t %1.2E C^2-m/N',alpha_d);
