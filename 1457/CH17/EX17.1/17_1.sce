clc
//Initialization of variables
Ns=500
h=900 //ft
Q=1600 //gpm
//calculations
ne=Ns*h^(3/4) /sqrt(Q)
//results
printf("Minimum rotative speed = %d rpm",ne)
