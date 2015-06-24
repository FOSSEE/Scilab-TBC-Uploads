//Variable declaration:
Do = 0.06                        //Outside diameter of pipe (m)
Di = 0.05                        //Inside diameter of pipe (m)
ho = 8.25                        //Outside coefficient (W/m^2.K)
hi = 2000.0                      //Inside coefficient (W/m^2.K)
R = 1.33*10**-4                  //Resistance for steel (m^2.K/W)

//Calculation:
U = 1.0/(Do/(hi*Di)+R+1.0/ho)    //Overall heat transfer coefficient (W/m^2.°K)

//Result:
printf("The overall heat transfer coefficient is : %.2f W/m^2.°K.",U)
