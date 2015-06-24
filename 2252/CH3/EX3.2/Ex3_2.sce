
mu_not=4D-7*%pi
N=150  //no. of turns of coil
I=4  //current carried by coil
l=.3  //length of solenoid in mtrs
Bc=mu_not*N*I/l
mprintf("Flux density at centre =%f*10^-3 Wb/m^2", Bc*10^3)
