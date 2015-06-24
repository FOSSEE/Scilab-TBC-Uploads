//Problem 12.09:

//initializing the variables:
//Antoine Eq Coeff for Methanol
Am = 16.5938; 
Bm = 3644.3;
Cm = 239.76;
//Antoine Eq Coeff for water
Aw = 16.262; 
Bw = 3799.89;
Cw = 226.35;
p = 101.325; // in kpa

//calculation:
//The saturation temperatures:
Tsat_m = (Bm/(Am - log(p))) - Cm
Tsat_w = (Bw/(Aw - log(p))) - Cw
T = 70
xm = (p - %e^(Aw - (Bw/(T + Cw))))/((%e^(Am - (Bm/(T + Cm)))) - %e^(Aw - (Bw/(T + Cw))))
ym = xm*125.07/p
printf("\n\nResult\n\n")
printf("\n mole fraction at 70 degC xm = %.3f and ym = %0.3f \n To generate a T-x, y diagram, plot the xm and ym data as the ordinate and temperature as the abscissa. See Fig. 12.6.",xm, ym)
