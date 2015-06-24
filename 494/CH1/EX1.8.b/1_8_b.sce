d = 30; //inflated diameter of ballon in feet
W = 800; //weight of the balloon in lb
g = 32.2; //acceleration due to gravity
rho_0 = 0.002377; //density at sea level (h=0)
//part (b)
//Assuming the balloon to be spherical, the Volume can be given as
V = 4/3*%pi*((d/2)^3);
//Assuming the weight of balloon does not change, the density at maximum altitude can be given as
rho_max_alt = W/g/V;

//Thus from the given variation of density with altitude, we obtain the maximum altitude as

h_max = 1/0.000007*(1-((rho_max_alt/rho_0)^(1/4.21)))

printf("\nRESULTS\n---------\nThe maximum altitude that can be reached is:\n          h = %4.0f ft",h_max)