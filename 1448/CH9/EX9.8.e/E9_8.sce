clc
//Initialization of variables
E0=-0.11 //V
H=10^-7
//calculations
pH=-log10(H)
E=E0-29.59*pH*10^-3
//results
printf("Biological standard potential = %.2f V",E)
