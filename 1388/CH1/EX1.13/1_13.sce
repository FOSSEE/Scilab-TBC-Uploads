clc
//initialisation of variables
k= 1.38*10^-16
N= 6*10^23 //molecules
a= 105 //degrees
l= 0.957 //A
e= 4.8*10^-10 //ev
//CALCULATIONS
u= sqrt(9*k*2.08*10^4/(4*%pi*N))
uh= u/(2*cosd(a/2))
z= uh/(l*e*10^-8)
//RESULTS
printf (' Dipole moment = %.2e e.s.u.cm',u)
printf (' \n Dipole moment = %.2e e.s.u.cm',uh)
printf (' \n percentage of iconic character = %.2f',z)
