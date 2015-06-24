//all the quantities are expressed in SI units

p0 = 6.7e4;                //total pressure as measured by the pitot tube
p1 = 6.166e4;              //ambient pressure at 4km altitude
rho = 0.81935;             //density of air at 4km altitude

//thus the velocity of the airplane can be given as
V1 = sqrt(2*(p0-p1)/rho);

printf("\nRESULTS\n--------\nThe velocity of the airplane is\n              V1 = %3.1f m/s = %3.0f mph",V1,V1/0.447)