clc();
clear;
//Given :
h = 6.625*10^-34;//Planck's constant in Js
c = 3*10^8 ; //velocity of light in m/s
// 1A = 1.0*10^-10 m
//(a)Energy of a photon : 
// E = h*nu or E = h*c/lambda
printf("Energy of a photon is %2.4f x 10^-16 /lambda(in A)  J\n",((h*c)*10^10)*10^16);
//1eV = 1.6*10^-19 J
printf("Energy of a photon is %.0f/lambda(in A)  eV\n\n",round(((h*c)/(1.6*10^-19))*10^10));
//(b)Visible light Range is 4000-7000 A
lambda1 = 4000;//Wavelength in A
lambda2 = 7000;//Wavelength in A
// 1eV = 1.6*10^-19 J , 
E1 = (h*c)/(lambda1*10^-10*1.6*10^-19); //Energy in eV
E2 = (h*c)/(lambda2*10^-10*1.6*10^-19);//Energy in eV
printf("Hence the range of energies for visible photos is  %.1f eV  to  %.1f eV",E2,E1);
