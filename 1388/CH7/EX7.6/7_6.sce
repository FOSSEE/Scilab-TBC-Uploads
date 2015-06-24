clc
//initialisation of variables
o= 0.999505 //mho cm^-1
k= 0.0128560
i= 97.36 //ohms
I= 117.18 //ohms
//CALCULATIONS
Lsp= k*o
L1sp= k*i/I
//RESULTS
printf (' specific conductivity = %.6f mho cm^-1 ',L1sp)
