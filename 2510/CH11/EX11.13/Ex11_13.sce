//Variable declaration:
Q = 5.0                         //Radiation heat transfer (W)
E = 1.0                         //Emissivity of filament
s = 5.669*10**-8                //Stefan-Boltzmann constant
T1 = 900.0+273.0                //Light bulb temperature (K)
T2 = 150.0+273.0                //Glass bulb temperature (K)

//Calculation:
A = Q/(E*s*(T1**4-T2**4))       //Surface area of the filament (m^2)

//Result:
printf("The surface area of the filament is : %.2f cm^2",A*10**4)
