//clc()
F = 100;//kg
xf = 0.15;
P1 = 80;//% ( Carbonate recovered )
M1 = 106;//(Molecular weight of Na2CO3)
M2 = 286;//(Molecular weight of Na2CO3.10H2O)
x1 = M1 / M2;//(Weight fraction of Na2CO3 in crystals)
Mrecovered = P1 * F * xf / 100;
Wcrystal = Mrecovered / x1;
disp("kg",Wcrystal,"(a)quantity of crystals formed = ")
//Na2CO3 balance gives, F*xf = Wcrystal*x1 + W2*x2
//W2 weight of mother liquor remaining after crystallization
//let M = W2 * x2,therefore
M = F * xf - Mrecovered;
x2 = 0.09;
W2 = M/x2;
W3 = F - Wcrystal - W2;//weight of water evaporated
disp("kg",W3,"(b)Weight of water evaporated = ")