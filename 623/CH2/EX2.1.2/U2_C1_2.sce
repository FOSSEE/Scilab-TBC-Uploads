//variable initialization
v=2*10^-2;                                                                      //side of the cube (meter)
lembda=5000*10^-10;                                                             //wavelength (meter)
delta_lembda=10*10^-10;                                                         //range of wavelength (meter)
k=1.38*10^-23;                                                                  //Boltzmann constant (joule/kelvin)
T=1500                                                                          //Temperature of the cavity (kelvin)

//(i)Number of modes:
N=(8*%pi*v^3*delta_lembda)/lembda^4;                                            //number of modes

//(ii)Total radiant energy in the cavity:
U=N*k*T;                                                                        //energy density (joule)

printf("\n(a) Number of modes = %.3e\n(b) Energy density = %.2e joule",N,U);

//Note: In book the answers of both the parts are wrong by one order of magnitude
