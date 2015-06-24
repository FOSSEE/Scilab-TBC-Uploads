clc();
clear;
//Given :
lambda1 = 5890 ; // Wavelength in angstroms
lambda2 = 5896 ; // Wavelength in angstroms
//For sodium doublet
nu1 = 5.0934*10^14; //Frequency in Hz
nu2 = 5.0882*10^14; //Frequency in Hz

deltanu = nu1-nu2; // Differnece in Frequencies in Hz 
Tc = 1/deltanu ; // Coherence time in s

n1 = Tc*nu1; // Number of Cycles of wavelength 5890 angstroms
n2 = Tc*nu2;// Number of cycles of wavelegth 5896 angstrom
//in this coherence time , we have:
printf("Cycles : %d , Wavelength %d A \n",round(n1),lambda1);
printf("Cycles : %d , Wavelength %d A",round(n2),lambda2);

