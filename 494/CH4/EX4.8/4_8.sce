//All the quantities are expressed in SI units

c = 1.5;            //airfoil chord
Re_c = 3.1e6;       //Reynolds number at trailing edge

//from eq.(4.87), the turbulent boundary layer thickness at trailing edge is given by
delta = 0.37*c/(Re_c^0.2);

//from eq(4.86)
Cf = 0.074/(Re_c^0.2);

//the net Cf for both surfaces is given by
Net_Cf = 2*Cf;

printf("\nRESULTS\n--------\n(a)\n   delta = %1.4f m\n---------\n(b)\n   Cf = %1.5f\n   Net Cf = %1.5f",delta,Cf,Net_Cf)