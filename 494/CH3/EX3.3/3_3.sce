//All the quantities are expressed in SI units

rho = 1.225;       //freestream density of air along the streamline
delta_p = 335.16;   //pressure difference between inlet and throat
ratio = 0.8;       //throat-to-inlet area ratio

//The velocity at the inlet can be given as
v_1 = sqrt(2*delta_p/rho/(((1/ratio)^2)-1));

printf("\nRESULTS\n--------\nThe value of velocity at the inlet is\n              V1 = %3.1f m/s\n",v_1)