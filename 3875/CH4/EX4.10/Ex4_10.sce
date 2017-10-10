clc;
clear;
lambda1=6360 //wavelength in Angstrom
Beta2_by_Beta1=7.5/8 //Ratio of the fringes widths
Beta1_by_Beta2=7.5/8.5 //Ratio of the fringes widths

//calculation
lambda2=Beta2_by_Beta1*lambda1
mprintf("The wavelength is = %4.1f A\n",lambda2)

lambda2=Beta1_by_Beta2*lambda1
mprintf("The wavelength is = %4.1f A",lambda2)
