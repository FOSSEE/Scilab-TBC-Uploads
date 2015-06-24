clc
//initialisation of variables
P1= 83.5//psia
P2= 5 //psia
n= 3 //percent
n1= 1.25
//CALCULATIONS
nv= 1-(n/100)*((P1/P2)^(1/n1)-1)
nv1= 1-(n/100)*(sqrt((P1/P2)^(1/n1))-1)
//RESULTS
printf ('single-stage compression = %.3f ',nv)
printf (' \n two-stage compression = %.3f ',nv1)
