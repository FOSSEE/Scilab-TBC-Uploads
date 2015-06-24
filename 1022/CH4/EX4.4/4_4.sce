clc
//initialisation of variables
v= 50 //fps
mu= 1.6*10^-4 //ft^2/s
d1= 10 //in
d2= 10 //in square
//CALACULATIONS
D= (%pi*4*d1^2/4)/(%pi*d2*12)
Re= (v*D)/mu
D1= (d1^2/(4*d2*3))
Re1= (v*D1)/mu
//RESULTS
printf ('Re= %.3e ',Re)
printf (' \n Re= %.3e ',Re1)
