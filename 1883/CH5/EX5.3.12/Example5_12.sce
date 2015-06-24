//Chapter-5,Example5_3_12,pg 5-12

h=6.63*10^-34                                                 //Plancks constant

m=6.68*10^-27                                                 //mass of alpha particle 

E=1.6*10^-16                                                  //energy asociated with alpha particle

wavelength=h/sqrt(2*m*E)

printf("\nThe de Broglie wavelength of an alpha particle\n")

disp(wavelength)

printf("meter\n")

v=h/(m*wavelength)                                                   //velocity of an alpha particle

printf("\nThe velocity of an alpha particle  v = %.2f m/s\n",v)
