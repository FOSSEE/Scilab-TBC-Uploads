clc
//initialisation of variables
m= 1.008 //gms
m1= 36.98 //gms
N= 6*10^23 //molecules
r= 1.275*10^-8 //cm
//CALCULATIONS
u= m*m1/(N*(m+m1))
I= u*r^2
//RESULTS
printf (' reduced mass = %.2e g',u)
printf (' \n moment of inertia = %.2e g cm^2',I)
