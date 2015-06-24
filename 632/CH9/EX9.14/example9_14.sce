//clc()
//F = feed, E = extract, S = solvent, R = Raffinate
xwaterF = 0.7;//Feed
xalcoholF = 0.3;
xwaterR = 0.71;//raffinate
xalcoholR = 0.281;
xethyR = 0.009;
xwaterE = 0.008;//Extract
xalcoholE = 0.052;
xethyE = 0.94;
//Total balance, R + E = F + S
F = 100;//kg
//R + E = 100 + S                         (1)
//Isopropyl balance, xalcoholR * R + xalcoholE*E = xalcoholF * F
//0.281*R + 0.052 * E = 30                (2)
//Ethylene tetra chloride balance, xethyR * R + xethyE * E = S
//0.009*R + 0.94*E = S                    (3)
//Solving equation 1, 2 and 3 simultaneously, we get,
S = 45.1;
E = 47.04;
R = 98.06;
disp("kg",S,"(a)Amount of solvent used = ")
disp("kg",E,"(b)Amount of extract = ")
disp("kg",R,"   Amount of raffinate = ")
mextracted = E * xalcoholE;
P1 = mextracted * 100 / (F * xalcoholF);
disp("%",P1,"(c)Percent of isopropyl alcohol extracted = ")
