//clc()
T = 280;//K
P = 105;//kPa
Pas = 13.25;//kPa ( Vpaour pressure of acetone )
Pa = Pas;// ( As gas is saturated, partial pressure = vapour pressure )
Mfr = Pa / P;//(Mole fraction) 
Mpr = Mfr * 100;
disp("%",Mpr,"(a)The mole percent of acetone in the mixture = ")
Ma = 58.048;//(molecular weight of acetone)
Mn = 28;//(molecular weight of nitrogen)
N = 1;//mole
Na = Mfr * N;
Nn = N - Na;
ma = Na * Ma ;
mn = Nn * Mn;
mtotal = ma + mn;
maper = ma *100 / mtotal;
mnper = mn *100/ mtotal;
disp("%",maper,"(b)Weight percent of acetone = ")
disp("%",mnper,"Weight percent of nitrogen = ")
Vstp = 22.4;//m^3/kmol
Pstp = 101.3;//kPa
Tstp = 273.15;//K
V = Vstp * Pstp * T / ( Tstp * P );
C = ma/V;
disp("kg/m^3",C,"(c)Concentration of vapour = ")