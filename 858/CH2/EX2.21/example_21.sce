clc
clear 
printf("example 2.21 page number 79\n\n")

//to find the emf of cell

E0_Zn=-0.76;
E0_Pb=-0.13;
c_Zn=0.1;
c_Pb=0.02;

E_Zn=E0_Zn+(0.059/2)*log10(c_Zn);
E_Pb=E0_Pb+(0.059/2)*log10(c_Pb);
E=E_Pb-E_Zn;

printf("emf of cell = %f V",E)
printf("\n\nSince potential of lead is greater than that of zinc thus reduction will occur at lead electrode and oxidation will occur at zinc electrode")
