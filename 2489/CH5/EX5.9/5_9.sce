clc
//Intitalisation of variables
clear
dc= 2.033
d= 0.7784 //kg/m^3
mw= 84.16 //gm
x1= 2.42 //gm
x2= 1.1 //gm
n1= 6 //atoms
n2= 12 //atoms
//CALCULATIONS
MP= (dc-1)*mw/((dc+2)*d)
MPC= x1*n1+x2*n2
//RESULTS
printf ('Molar polarisation of this substance = %.2f cc',MP)
printf ('\n Calculated Molar polarisation of this substance = %.2f cc',MPC)
