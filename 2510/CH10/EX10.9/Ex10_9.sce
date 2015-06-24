//Variable declaration:
Ts = 113.0+273.0                    //Surface temperature of bulb (K)
Too = 31.0+273.0                    //Ambient air temperature (K)
D = 0.06                            //Diameter of sphere (m)
g = 9.8                             //Gravitational acceleration (m/s^2)

//Calculation:
Tf = (Ts+Too)/2                     //Mean temperature (K)
//From Appendix:
v = (22.38*10**-5)*0.0929           //Kinematic viscosity (m^2/s)
Pr = 0.70                           //Prandtl number
k = 0.01735*1.729                   //Thermal conductivity (W/m.K)
B = 1.0/(Tf)                        //Coefficient of expansion (K^-1)
Gr = g*B*(Ts-Too)*D**3/v**2         //Grashof number
Ra = Gr*Pr                          //Rayleigh number

//From equation 10.13:
h = (k/D)*0.6*Ra**(1.0/4.0)         //Heat transferred from bulb (W/m^2.K)

//Result:
printf("The heat transferred from bulb to air is : %.2f  W/m^2.K.",h)
