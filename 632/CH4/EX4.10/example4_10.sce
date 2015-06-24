//clc()
V = 100;//m^3
P = 600;//kPa
T = 310;//K
per1 = 20;//% ( H2S entering )
per2 = 2;//% ( H2S leaving )
Pstp = 101.325;//kPa
Tstp = 273.15;//K
Vstp = 22.414;//m^3/kmol
Vstp1 = V * P * Tstp / ( T * Pstp)
N = Vstp1 / Vstp;
N1 = N * per1 / 100;
N2 = N - N1;// ( 2 = inerts)
Nleaving = N2 / ( 1 - per2 / 100);
N1leaving = per2 * Nleaving / 100;
mabsorbed = (N1 - N1leaving) * 34.08;//( molecular wt. = 34.08)
mgiven = 100;//kg/h
Vactual = mgiven * V / mabsorbed;
Nactual = Nleaving * Vactual / V;// actual moles leaving
Vstpl = Nactual * Vstp;// volume leaving at STP
P2 = 500;//kPa
T2 = 290;//K
V2 = Vstpl * Pstp * T2 / ( P2 * Tstp);
Precovery = (N1 - N1leaving)*100 / N1;
disp("m^3/h",Vactual,"(a)Volume of gas entering per hour")
disp("m^3/h",V2,"(b)Volume of gas leaving per hour")
disp("%",Precovery,"(c)Percentage recovery of H2S")