clc
P=40000 //lb
L=15 //in
delta=0.0032 //in
dia=4 //in
axial=0.0032  //in
lateral=0.00022  //in
E=P*L/(delta*%pi*(dia/2)^2)
printf("Modulus of elasticity=%f psi",E)
Mu=lateral*L/(axial*dia)
printf("\n Poisson ratio= %f",Mu)
