clc 
//initialisation of variables
r= 82.4 //ohms
k= 0.002768 //ohm^-1
R1= 326 //ohm
//CALCULATIONS
K= r*k
K1= (K/R1)
//RESULTS
printf ('cell constant= %.4f cm^-1',K)
printf ('\n specific conductance= %.3e ohm^-1 cm^-1',K1)
