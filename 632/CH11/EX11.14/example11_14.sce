//clc()
//CO,  26.586 + 7.582*10^-3*T - 1.12*10^-6*T^2
//CO2, 26.540 + 42.454*10^-3*T - 14.298*10^-6*T^2
//O2, 25.74 + 12.987*10^-3*T - 3.864*10^-6*T^2
//N2, 27.03 + 5.815*10^-3*T - 0.289*10^-6*T^2
//Cpmix = summation ( yi*Cpi ) = summation(yi*ai + yi*bi*T + yi*ci*T^2)
xco2 = 0.09;
xco = 0.02;
xo2 = 0.07;
xn2 = 0.82;
T1 = 600;//K
T2 = 375;//K
sumai = xco * 26.586 +xco2 * 26.540 + xo2 * 25.74 + xn2*27.03;
sumbi = xco * 7.582*10^-3 + xco2*2.454*10^-3+xo2*12.987*10^-3 + xn2*5.815*10^-3;
sumci = -(xco * 1.12*10^-6 + xco2*14.298*10^-6+xo2*3.864*10^-6+xn2*0.289*10^-6);
H = integrate('sumai+sumbi*T+sumci*T^2','T',T1,T2);
disp("kJ/kmol",H,"Enthalpy change = ")