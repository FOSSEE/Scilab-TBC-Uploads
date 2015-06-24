//Problem 12.14:

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
Ve = 58.68
Vt = 106.85
aet = 1556.45
ate = 210.52
// 
E_et = (Vt/Ve)*%e^(-aet/(R*(T+273)))
E_te = (Ve/Vt)*%e^(-ate/(R*(T+273)))
//
r_e = %e^(-log(xe + xt*E_et) + xt*(E_et/(xe + xt*E_et) - E_te/(xt + xe*E_te)))
r_t = %e^(-log(xt + xe*E_te) + xe*(E_te/(xt + xe*E_te) - E_et/(xe + xt*E_et)))
//
pde = p/(r_e*xe + r_t*xt*(pdt/pde))
//
Tn = Be/(Ae - log10(pde)) - Ce
//
ye = xe*r_e*pde/p

printf("\n\nResult\n\n")
printf("\n mole fraction at T = %.2f degC, xe = %.3f and ye = %0.2f \n Return to step 2 and use a different value for xe. Continue this until an entire T-x, y diagram is formed. \n A T-x, y diagram for ethanol and toluene employingWilson’s method can be found in Fig. 12.15.\n Note that an azeotrope is formed at x = y = 0.8. Generate an x–y diagram from the results obtained above.\n Refer to Table 12.18 for the x–y data. To generate an x–y diagram, simply plot the xe as the ordinate and ye as the abscissa.",T, xe, ye)
