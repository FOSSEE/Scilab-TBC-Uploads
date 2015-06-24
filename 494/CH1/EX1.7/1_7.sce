v_stall_mph = 100; //stalling speed in miles per hour
rho = 0.002377; //aimbient air density in slugs per cubic feet
W = 15900; //weight of the airplane in lbs
S = 342.6; //wing planform area in sq.ft

//Calculations
v_stall_fps = v_stall_mph*(88/60); //converting stalling speed in feet per second

//The maximum lift coefficient C_l_max is given by the relation
C_l_max = 2*W/rho/(v_stall_fps^2)/S;

printf("\nRESULTS\n--------\nThe maximum value of lift coefficient is\n              Cl_max = %1.3f\n",C_l_max)