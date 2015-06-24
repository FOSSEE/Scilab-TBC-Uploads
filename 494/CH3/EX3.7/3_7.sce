//all the quantities are expressed in SI units

p0 = 104857.2;             //total pressure as measured by the pitot tube
p1 = 101314.1;             //standard sea level pressure
rho = 1.225;               //density of air at sea level

//thus the velocity of the airplane can be given as
V1 = sqrt(2*(p0-p1)/rho);

printf("\nRESULTS\n--------\nThe velocity of the airplane is\n              V1 = %2.2f atm",V1)