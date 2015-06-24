//example-19.4
//page no-565
//given
//resistivity
rho=2*10^-3  //ohm m
//conductivity
sigma=1/rho  //per ohm m
//electrons and holes mobility
mue=0.3  //m^2/V s
muh=0.1  //m^2/V s
//charge on holes and electrons are same so
e=1.602*10^-19  //C
//we know that
//sigma=ne*e*mue+nh*e*muh
//here ne=nh=n
//so
n=sigma/(e*(mue+muh))  //per m^3  (some approximation is done in book)
printf ("the carrier density is %e per m^3",n)
