clc
clear
printf("Example 12.2 | Page number 416 \n\n");
//Find the stoichiometric air for combustion of (a)Carbon (b)Hydrogen (c)Sulphur
//Given data
//Molar masses of O2,H2,N2,C and S respectively
MO2 = 32 //g/mol
MH2 = 2 //g/mol
MN2 = 28 //g/mol
MC = 12 //g/mol
MS = 32 //g/mol
//Part(a)
printf("Part(a)\n")
printf("Stoichiometric air(Carbon) = %.2f kg/kg carbon\n\n",(MO2 + 3.76*MN2)/MC)
//Part(b)
printf("Part(b)\n")
printf("Stoichiometric air(Hydrogen) = %.2f kg/kg hydrogen\n\n",0.5*(MO2 + 3.76*MN2)/MH2)
//Part(c)
printf("Part(c)\n")
printf("Stoichiometric air(Sulphur) = %.2f kg/kg sulphur\n",(MO2 + 3.76*MN2)/MS)
