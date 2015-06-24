//example-19.3
//page no-563
//given
//mobility of silicon
mue=0.17  //m^2/V s
//mobility of holes
muh=0.035  //m^2/V s
//carrier density
n=1.1*10^16  //per m^3 (here ne=nh=n)
//electronic charge
e=1.602*10^-19  //C (here ee=eh)
//as we know that
//sigma=ne*ee*mue+nh*eh*muh
//so we get
sigma=n*e*(mue+muh)  //per ohm m
//resistivity
rho=1/sigma  //ohm m
printf ("the resistivity of silicon is %f ohm m approx.",rho)
