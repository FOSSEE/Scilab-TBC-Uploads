//All the quantities are expressed in SI units

rho = 1.225;       //freestream density of air along the streamline
p_1 = 101314.1;    //pressure at point 1
v_1 = 3.05;        //velocity at point 1
v_2 = 57.91;       //velocity at point 2

//The pressure at point 2 on the given streamline can be given as
p_2 = p_1 + 1/2*rho*((v_1^2) - (v_2^2));

printf("\nRESULTS\n--------\nThe pressure at point 2 is\n              p2 = %5.2f Pa\n",p_2)