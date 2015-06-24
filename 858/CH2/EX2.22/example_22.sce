clc
clear 
printf("example 2.22 page number 79\n\n")

//to find the emf of cell
E0_Ag=0.80;
E0_AgNO3=0.80;
c_Ag=0.001;
c_AgNO3=0.1;

E_Ag=E0_Ag+(0.059)*log10(c_Ag);
E_AgNO3=E0_AgNO3+(0.059)*log10(c_AgNO3);
E=E_AgNO3-E_Ag;

printf("emf of cell = %f V" ,E)
printf("\n\nsince E is positive, the left hand electrode will be anode and the electron will travel in the external circuit from the left hand to the right hand electrode")
