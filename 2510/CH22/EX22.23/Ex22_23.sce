//Variable declaration:
Too = 100                           //Steam temperature ( C)
Ti = 18                             //Initial temperature of liquid TCA ( C)
Tf = 74                             //Final temperature of liquid TCA ( C)
t = 180                             //Heating time (s)
p = 87.4                            //Density of TCA (lb/ft^3)
V = 18                              //Kinematic viscosity of TCA (m^2/s)
cp = 0.23                           //Heat capacity of TCA (Btu/lb. F)
U = 200                             //Overall heat transfer coefficient (Btu/h.ft^2. F)

//Calculation:
ui = Too-Ti                         //Initial excess temperature ( C)
uf = Too-Tf                         //Final excess temperature ( C)
R = log(ui/uf)                      //Ratio t/r
r = t/R                             //Thermal time constant (s)
A = p*V*cp/(3600*U*r)               //Required heating area (ft^3)
Ti_F = Ti*9/5+32                    //Initial temperature in fahrenheit scale ( F)
Tf_F = Tf*9/5+32                    //Final temperature in fahrenheit scale ( F)
Q = p*V*cp*(Tf_F-Ti_F)              //Total amount of heat added (Btu)

//Result:
printf("1. The required surface area of the heating coil is : %e ft^3",A)
printf("2. The total heat added to the liquid TCA is : %.0f Btu",Q)
