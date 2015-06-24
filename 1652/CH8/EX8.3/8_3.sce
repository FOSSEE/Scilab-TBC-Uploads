clc
//Initialization of variables
T=373.2 //K
n=1 //mol
qp=9720 //cal/mol
//calculations
q=n*qp
w=1.987*T
dE=q-w
//results
printf("Heat of vaporization = %d cal",q)
printf("\n Change in energy = %d cal",dE)
