clc
//initialisation of variables
x1= %pi/4
y= 350^2-300^2
W= 2000*10^3
E= 200000
h= 5*10^3
//CALCULATIONS
A= x1*y
sigma= -(W/A)
epsilon= (sigma/E)
delta= -(epsilon*h)
//RESULTS
printf ('A= %.2f mm^2',A)
printf (' \n sigma=%.2f N/mm^2',sigma)
printf (' \n epsilon=%.5f ',epsilon)
printf (' \n delta=%.2f mm',delta)
