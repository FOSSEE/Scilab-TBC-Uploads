//All the quantities are expressed in SI units

c = 1.5;            //airfoil chord
Re_c = 3.1e6;       //Reynolds number at trailing edge

//from eq.(4.84), the laminar boundary layer thickness at trailing edge is given by
delta = 5*c/sqrt(Re_c);

//from eq(4.86)
Cf = 1.328/sqrt(Re_c);

//the net Cf for both surfaces is given by
Net_Cf = 2*Cf;

printf("\nRESULTS\n--------\n(a)\n   delta = %1.5f m\n---------\n(b)\n   Cf = %1.2f x 10^-4\n   Net Cf = %1.4f",delta,Cf*10000,Net_Cf)