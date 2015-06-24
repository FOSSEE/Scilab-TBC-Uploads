//Chapter-5,Example5_3_6,pg 5-7

h=6.63*10^-34                                //Plancks constant

m=1.67*10^-27                               //mass of a neutron

e=1.6*10^-19                                 //charge on electron

wavelength=10^-10                                   //The de Broglie Wavelength of a neutron

v=h/(m*wavelength)                                  //velocity of a neutron

printf("\nThe velocity of a neutron is  v= %.f m/s\n",v)

E=h^2/(2*m*wavelength^2*e)                          //Kinetic energy of a neutron

printf("\nKinetic energy of a neutron is  E= %.5f eV\n",E)
