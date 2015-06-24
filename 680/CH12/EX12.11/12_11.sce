//Problem 12.11:

//initializing the variables:
//Antoine Eq Coeff for ethanol
Ae = 8.1122; 
Be = 1592.864;
Ce = 226.184;
//Antoine Eq Coeff for toulene
At = 6.95805; 
Bt = 1346.773;
Ct = 219.693;
p = 760; // mm of Hg
R = 1.987;

//calculation:
//The saturation temperatures:
Tsat_e = (Be/(Ae - log10(p))) - Ce
Tsat_t = (Bt/(At - log10(p))) - Ct
//
xe = 0.5
xt = 0.5
T = xe*Tsat_e + xt*Tsat_t
//
pde = 10^(Ae - (Be/(T + Ce)))
pdt = 10^(At - (Bt/(T + Ct)))
//
a = 0.5292
bet = 713.57
bte = 1147.86
//
tou_et = bet/(R*(T+273))
tou_te = bte/(R*(T + 273))
Get = %e^(-1*a*tou_et)
Gte = %e^(-1*a*tou_te)
r_e = %e^(0.5^2*(tou_te*(Gte/(xe + xt*Gte))^2 + Get*tou_et/(xt + xe*Get)^2))
r_t = %e^(0.5^2*(tou_et*(Get/(xt + xe*Get))^2 + Gte*tou_te/(xe + xt*Gte)^2))
//
pde = p/(r_e*xe + r_t*xt*pdt/pde)
//
Tn = Be/(Ae - log10(pde)) - Ce
//
ye = xe*r_e*pde/p

printf("\n\nResult\n\n")
printf("\n mole fraction at T = %.2f degC, xe = %.3f and ye = %0.3f \n Return to step 2 and use a different value for xe. Continue this until an entire T-x, y diagram is formed. \n A T-x, y diagram for ethanol and toluene, employing the NRTL method can be found in Fig. 12.11\n To generate an x–y diagram, simply plot the xe as the ordinate and ye as the abscissa.",T, xe, ye)
