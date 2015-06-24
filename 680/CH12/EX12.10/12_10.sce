//Problem 12.10:

//initializing the variables:
//Antoine Eq Coeff for Methanol
Am = 16.5938; 
Bm = 3644.3;
Cm = 239.76;
//Antoine Eq Coeff for water
Aw = 16.262; 
Bw = 3799.89;
Cw = 226.35;
T = 40; // in degC

//calculation:
xm = 0.3
pdm = (%e^(Am - (Bm/(T + Cm))))
pdw = (%e^(Aw - (Bw/(T + Cw))))
p = xm*pdm + (1 - xm)*pdw
ym = xm*pdm/p
printf("\n\nResult\n\n")
printf("\n mole fraction at 40 degC xm = %.3f and ym = %0.3f \n To generate an x–y diagram, simply plot the xm as the ordinate and ym as the abscissa (Fig. 12.9).\n Again, the convention is to plot only the more volatile compound on phase equilibria diagrams.\n Also, for x–y diagrams, it is standard to plot data on a square coordinate system.",xm, ym)
