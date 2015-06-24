//All the quantities are expressed in SI units

c = 1.5;                //airfoil chord length
Rex_cr = 5e5;           //critical Reynold's number
Re_c = 3.1e6;           //Reynold's number at the trailing edge

//the point of transition is given by
x1 = Rex_cr/Re_c*c;

//the various skin friction coefficients are given as
Cf1_laminar = 1.328/sqrt(Rex_cr);
Cfc_turbulent = 0.074/(Re_c^0.2);
Cf1_turbulent = 0.074/(Rex_cr^0.2);

//thus the total skin friction coefficient is given by
Cf = x1/c*Cf1_laminar + Cfc_turbulent - x1/c*Cf1_turbulent;

//taking both sides of plate into account
Net_Cf = 2*Cf;

printf("\nRESULTS\n--------\nThe net skin friction coefficient is\n        Net Cf = %1.4f",Net_Cf)