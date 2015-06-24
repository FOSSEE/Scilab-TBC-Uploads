//Problem 12.12:

//initializing the variables:
//Antoine Eq Coeff for Methanol
Am = 16.5938; 
Bm = 3644.3;
Cm = 239.76;
//Antoine Eq Coeff for water
Aw = 16.262; 
Bw = 3799.89;
Cw = 226.35;
R = 1.987;
T = 40; //in degC

//calculation:
xm = 0.3
xw = 0.7
pdm = %e^(Am - (Bm/(T + Cm)))
pdw = %e^(Aw - (Bw/(T + Cw)))
//
a = 0.2994
bmw = -253.88
bwm = 845.21
//
tou_mw = bmw/(R*(T+273))
tou_wm = bwm/(R*(T + 273))
Gmw = %e^(-1*a*tou_mw)
Gwm = %e^(-1*a*tou_wm)
r_m = %e^(0.5^2*(tou_wm*(Gwm/(xm + xw*Gwm))^2 + Gmw*tou_mw/(xw + xm*Gmw)^2))
r_w = %e^(0.5^2*(tou_mw*(Gmw/(xw + xm*Gmw))^2 + Gwm*tou_wm/(xm + xw*Gwm)^2))
p = xm*pdm + (1 - xm)*pdw
ym = xm*r_m*pdm/p

printf("\n\nResult\n\n")
printf("\n mole fraction at T = %.0f degC, xe = %.3f and ye = %0.3f \n To generate a P-x, y diagram, plot xm and ym data as the ordinate and pressure as the abscissa (see Fig. 12.13).",T, xm, ym)
