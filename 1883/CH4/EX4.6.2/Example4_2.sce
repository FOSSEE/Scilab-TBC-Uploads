//Chapter-4,Example4_6_2,pg 4-7

wavelength=694.3*10^-9                            //wavelength of He-Ne laser

h=6.63*10^-34                              //Plancks constant

c=3*10^8                                   //velocity of light in air

k=1.38*10^-23                              //Boltzmann constant

T=300                                      //ambient temperature in kelvin

ratio=%e^-(h*c/(wavelength*k*T))                  //ratio of population of two energy level in laser 

printf("\nRatio of population of two energy level in laser N2/N1 is\n")

disp(ratio)
