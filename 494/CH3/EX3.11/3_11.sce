//all the quantities are expressed in SI units

V_inf = 45.72;        //freestream velocity
V = 68.58;            //velocity at the given point

//the coeeficient of pressure at the given point is given as
Cp = 1 - (V/V_inf)^2;

printf("\nRESULTS\n--------\nThe coefficient of pressure at the given point is\n              Cp = %1.2f",Cp)