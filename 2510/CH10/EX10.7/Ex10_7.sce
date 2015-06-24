//Variable declaration:
Ts = 120.0+460                  //Surface temperature of plate (°R)
Too = 60.0+460                  //Ambient temperature of nitrogen (°R)
L = 6                           //Height of plate (ft)
//From Appendix:
p = 0.0713                      //Air density (lb/ft^3)
k = 0.01514                     //Thermal conductivity (Btu/h.ft.°F)
v = 16.82*10**-5                //Kinematic viscosity (ft^2/s)
Pr = 0.713                      //Prandtl number
g = 32.2                        //Gravitational acceleration (ft/s^2)

//Calculation:
Tf = (Ts+Too)/2                 //Mean film temperature (°R)
B = 1.0/Tf                      //Coefficient of expansion (°R^-1)
Gr = g*B*(Ts-Too)*L**3/v**2     //Grashof number
Ra = Gr*Pr                      //Rayleigh number
//From equation 10.13(Table 10.2) and costants from Table 10.1:
h = 0.10*(k/L)*Ra**(1.0/3.0)    //Free convection heat transfer coefficient (Btu/h.ft^2.°F)

//Result:
printf("The free convection heat transfer coefficient is : %.3f Btu/h.ft^2.°F .",h)
printf("There is a calculation mistake in the book for calculating Gr, so, value of h alters from that given.")
