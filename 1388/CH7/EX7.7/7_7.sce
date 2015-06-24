clc
//initialisation of variables
A= 388.5
l= 349.8
a= 0.61
m= 0.1 //M
//CALCULATIONS
L= A-l
A1= a*A
Lsp= m*A1/1000
//RESULTS
printf (' equivalent conductance of the anion at infinite solution = % 2e mho cm^-2 ',Lsp)
