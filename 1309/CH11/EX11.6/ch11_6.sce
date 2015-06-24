clc;
clear;
printf("\t\t\tChapter11_example6\n\n\n");
// (a) Calculation of the rate at which the sun’s radiant energy is transmitted through the glass windshield. The interior of the car is considered to be a black body that radiates at 100°F. (b) Calculation of the rate at which radiant energy from the car interior is transmitted through the glass windshield. 
printf("\t\t\tSolution to Part (a)\n");
lambda1=300e-9; // lower limit of wavelength
lambda2=380e-9; // upper limit of wavelength
T=5800;
lambda1_T=lambda1*T;
lambda2_T=lambda2*T;
printf("\nThe Lower and Upper limits of Wavelength-Temperature Products are %.2e m.K and %.3e m.K respectively",lambda1_T,lambda2_T);
I1=0.101; //Fraction of Total Radiation Emitted for lower Wavelength-Temperature Product from Table 11.1
I2=0.0334; //Fraction of Total Radiation Emitted for upper Wavelength-Temperature Product from Table 11.1
dI=abs(I2-I1);
t=dI*0.68; // transmissivity
printf("\nThe Transmittivity is %.4f",t);
q=1100; // radiation received by car in W/sq.m
q_in=t*q; // energy transmitted from the sun through the glass
printf("\nThe energy transmitted from the sun through the glass is %.1f W/sq.m",q_in);
printf("\n\t\t\tSolution to Part (b)\n");
Tb=311; // temperature of black body source in K
lambda1_Tb=lambda1*Tb;
lambda2_Tb=lambda2*Tb;
printf("\nThe Lower and Upper limits of Wavelength-Temperature Products are %.2e m.K and %.2e m.K respectively",lambda1_Tb,lambda2_Tb);
dI_b=0; // Table 11.1 gives negligibly small values of the corresponding integrals.
t_b=dI_b*0.68; // transmissivity
q_out=t_b*q;
printf("\nthe rate at which radiant energy from the car interior is transmitted through the glass windshield is %d W/sq.m",q_out);
