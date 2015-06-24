//Given that
density_ice = 917  //in kg/m^3
density_seawater = 1024  //in kg/m^3

//Sample Problem 15-4
printf("**Sample Problem 15-4**\n")
//Using archimedies principle
//density_seawater*Vs*g = density_ice*Vt*g
//fractoin of non-visible part 'f' is
f = density_ice/density_seawater  //Vs/Vt
printf("The fraction of the visible part is equal to %f", (1-f))