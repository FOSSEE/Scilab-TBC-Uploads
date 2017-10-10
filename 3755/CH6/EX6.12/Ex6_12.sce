clear
//
//
//

//Variable declaration    
h=6.625*10^-34;        //planck's constant(J-sec)
m=1.675*10^-27;    //mass of neutron(kg)
e=1.6*10^-19;        //charge of electron(c)
E=10^14;      //energy of neutron(eV)

//Calculations
v=sqrt(2*E*e/m);      //velocity(m/sec)
lamda=h/(m*v);        //de-broglie wavelength of neutron(m)

//Result
printf("\n de-broglie wavelength of neutron is %0.2f *10^-18 m",lamda*10^18)
