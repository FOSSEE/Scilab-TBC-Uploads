clc
//Initialization of variables
ne=600/2 
gpm=1450
h=140
NPSH=10.4
//calculations
Ns=gpm*sqrt(ne) /h^(3/4)
sigmac=NPSH/h
zsmax=-3 //ft
//results
printf("Sigma C for the pump = %.4f",sigmac)
printf("\n Position of pump = %d ft",zsmax)
