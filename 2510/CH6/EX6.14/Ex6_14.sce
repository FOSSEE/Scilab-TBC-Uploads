//Variable declaration:
u = 6.72*10**-4                     //Viscosity of water (lb/ft.s)
p = 62.4                            //Density of water (lb/ft^3)
//For laminar flow:
Re = 2100.0                        //Reynolds number
//From table 6.2, we have:
D = 2.067/12.0                      //Inside diameter of pipe (ft)

//Calculation:
V = Re*u/D/p                        //Average velocity of water flowing (ft/s)

//Result:
printf("The average velocity of water flowing is: %.2f ft/s.",V)
