v_inf_mph = 492; //freestream velocity in miles per hour
rho = 0.00079656; //aimbient air density in slugs per cubic feet
W = 15000; //weight of the airplane in lbs
S = 342.6; //wing planform area in sq.ft
C_d = 0.015; //Drag coefficient

//Calculations
v_inf_fps = v_inf_mph*(88/60); //freestream velocity in feet per second

C_l = 2*W/rho/(v_inf_fps^2)/S; //lift coefficient

//The Lift by Drag ratio is calculated as
L_by_D = C_l/C_d;

printf("\nRESULTS\n--------\nThe lift to drag ratio L/D is equal to: %2.0f\n",L_by_D)