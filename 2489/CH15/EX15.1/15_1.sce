clc
//Intitalisation of variables
clear
c1= 0.1 //M
c2= 0.2 //M
c3= 0.4 //M
n1= 1
n2= 2
//CALCULATIONS
u1= 0.5*(c1*n1^2+c1*n1^2)
u2= 0.5*(c3*n1^2+c2*n2^2)
u3= 0.5*((c3+c1)*n1^2+c1*n1^2+c2*n2^2)
//RESULTS
printf ('Ionic strength = %.1f  ',u1)
printf ('\n Ionic strength = %.1f  ',u2)
printf ('\n Ionic strength = %.1f  ',u3)
