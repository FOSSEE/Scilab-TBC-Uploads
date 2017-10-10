clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
m=1.67*10^-27;    //mass of neutron(kg)
lamda=10^-10;        //de-broglie wavelength(m)
e=1.6*10^-19;        //charge of electron(c)

//Calculations
v=h/(m*lamda);          //velocity of neutron(m/sec)
E=m*v^2/(2*e);      //kinetic energy of neutron(eV)

//Result
printf("\n velocity of neutron is %0.2f *10^3 m/sec",v/10^3)
printf("\n kinetic energy of neutron is %0.5f eV",E)
printf("\n answer for kinetic energy in the book is wrong")
