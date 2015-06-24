//Variable declaration:
Ts = 110.0+273.0                //Surface temperature of plate (K)
Too = 30.0+273.0                //Ambient air temperature (K)
L = 3.5                         //Height of plate (m)
g = 9.807                       //Gravitational acceleration (m^2/s)

//Calculation:
Tf = (Ts+Too)/2                 //Film temperature (K)
DT = Ts - Too                   //Temperature difference between surface and air (K)
//From appendix:
v = 2.0*10**-5                  //Kinematic viscosity for air (m^2/s)
k = 0.029                       //Thermal conductivity for air (W/m.K)
Pr = 0.7                        //Prandtl number
B = 1.0/Tf                      //Coefficient of expansion (K^-1)
Gr = g*B*DT*L**3/v**2           //Grashof number
Ra = Gr*Pr                      //Rayleigh number

//Result:
printf("The Grashof number is : %.2f  x 10^11 .",Gr/10**11)
printf("The Rayleigh number is : %.2f  x 10^11 .",Ra/10**11)
