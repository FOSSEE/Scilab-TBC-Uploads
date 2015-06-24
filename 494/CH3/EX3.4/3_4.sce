//All the quantities are expressed in SI units

rho = 1.23;           //freestream density of air along the streamline
v = 50;               //operating velocity inside wind tunnel
rho_hg = 13600;       //density of mercury
ratio = 12;           //contraction ratio of the nozzle
g = 9.8;              //acceleration due to gravity
w = rho_hg*g;         //weight per unit volume of mercury

//The pressure difference delta_p between the inlet and the test section is given as
delta_p = 1/2*rho*v*v*(1-(1/ratio^2));

//Thus the height difference in a U-tube mercury manometer would be
delta_h = delta_p/w;

printf("\nRESULTS\n--------\nThe height difference in a U-tube mercury manometer is\n              delta_h = %1.5f m\n",delta_h)