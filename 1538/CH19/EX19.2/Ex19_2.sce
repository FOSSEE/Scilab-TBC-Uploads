//example-19.2
//page no-563
//given
//resistivity of pure silicon is 
rho= 3000  //ohm m
//conductivity of pure silicon is reciproca of resistivity
sigma=1/rho  //(ohm m)^-1
//mobility of electrons and holes
muh=0.05  //m^2/V s
mue=0.14  //m^2/V s
//charge on elctron
e=1.602*10^-19  //C
// we know that
//sigme=ne*ee*mue+nh*eh*muh
//here we have ne=nh=n and ee=eh=e
//so we have sigma=n*e*muh+n*e*mue
//so 
n=sigma/(e*muh+e*mue)  //ohm m^2/(C V s)
printf ("the density of intrensic carriers is %e /m^3",n)
