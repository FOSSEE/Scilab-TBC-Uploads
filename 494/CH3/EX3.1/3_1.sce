//All the quantities are expressed in SI units

rho_inf = 1.23;    //freestream density of air at sea level
p_inf = 101000;    //freestream static pressure
v_inf = 50;        //freestream velocity
p = 90000;         //pressure at given point

//The velocity at the given point can be expressed as
v = sqrt((2*(p_inf-p)/rho_inf) + (v_inf^2));

printf("\nRESULTS\n--------\nThe velocity at the given point is\n              V = %3.1f m/s\n",v)