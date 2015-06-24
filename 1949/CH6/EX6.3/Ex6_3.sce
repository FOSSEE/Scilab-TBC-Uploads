//Chapter-6,Example 6_3,Page 6-27
clc()

//Given Values:
u=0.8*10^-23          //Magnetic dipole moment of an atom in paramagnetic gas in J/T
B=0.8                 //Magnetic field in tesla
K=1.38*10^-23         //Boltzmann constant

//To find Temperature at which Average thermal energy is equal to Magnetic energy 
//i.e. uB=3KT/2
T=2*u*B/(3*K)         //Required temperature

printf('Required temperature is =%.3f Kelvin \n',T)
