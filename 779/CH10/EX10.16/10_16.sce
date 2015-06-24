mo = 2; mn = 6;
muo = 32; mun = 28;
o = mo/muo;
n = mn/mun;
xo = o/(n+o);
xn = n/(n+o);
R = 8.314;
Ro = R/muo; Rn = R/mun;
dS = -mo*Ro*log(xo)-mn*Rn*log(xn);
disp("kJ/kg K",dS,"Increase in entropy is")