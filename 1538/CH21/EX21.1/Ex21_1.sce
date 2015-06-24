//example-21.1
//page no-621
//given
//magnetic field
H=2400  //A/m
//susceptibilty
kie=1500
//part(a)
//relative permeability is given by
mur=1+kie
//part(b)
//intensity of magnetization 
M=kie*H  //A/m
//part(c)
//permeability
mu0=4*(%pi)*10^-7
//remanance
B=mu0*mur*H  //T
printf ("the realative permeability is %f \n, the intensity of magnetisation is %f A/m \n and the remanance is %f",mur,M,B)
