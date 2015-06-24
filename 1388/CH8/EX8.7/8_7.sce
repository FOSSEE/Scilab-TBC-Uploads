clc
//initialisation of variables
h= 6.627*10^-27 //ergssec
N= 6.023*10^23 //molecules
c= 2.9979*10^10
Be= 60.809
mh= 1.0812 //gms
//CALCULATIONS
u= mh/2
Re= sqrt(h*N/(c*8*%pi^2*Be*u))
//RESULTS
printf (' internuclear distances = % 1e cm ',Re)
