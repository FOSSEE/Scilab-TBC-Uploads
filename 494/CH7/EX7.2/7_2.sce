//All the quantities are expressed in SI units

p_inf = 22790.9;            //ambient pressure at 36000 ft
T_inf = 217.2;              //ambient temperature at 36000 ft
p = 19152;                  //pressure at the given point
gam = 1.4;

//thus the temperature at the given point can be calculated by eq.(7.32) as
T = T_inf*((p/p_inf)^((gam-1)/gam));

printf("\nRESULTS\n--------\nThe temperature at the given point is:\n        T = %3.1f K\n",T)