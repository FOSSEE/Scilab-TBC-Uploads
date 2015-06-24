//Chapter-6,Example 6_4,Page 6-27
clc()

//Given Values:
T=27+273          //Temperature in kelvin
B=0.5             //Magnetic field in tesla
C=2*10^-3         //Curie's Constant
u0=4*%pi*10^-7    //Permeability in vacuum

// C=u0*M*T/B (Curie's law)
M=C*B/(u0*T)      //Magnetization of material at 300 K

printf('Magnetization of material at 300 K is =%.2f A/m \n',M)
