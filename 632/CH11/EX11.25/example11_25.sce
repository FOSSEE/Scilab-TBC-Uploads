//clc()
m = 1000;//kg/h ( basis  mass of 10% NaOH solution )
Pfeed = 10;//%
Ppro = 50;//(Percentage NaOH in product)
//Taking NaOH balance,P being the weight of the product
P = Pfeed * m / Ppro;
//W be the weight of water evaporized
W = m - P;
//step1 - cooling 1000kg/h of 10% solution from 305K to 298K
T1 = 305;//K
T2 = 298;//K
Cliq = 3.67;//kJ/kgK
H1 = m*Cliq * (T2 - T1);
//step2 - separation into pure components
Hsolution = -42.85;//kJ/mol
H2 = -Pfeed * m *1000 *Hsolution/ (40*100);
//step3 - W kg water is converted to water vapour
Hvap = 2442.5;//kJ/kg
H3 = W * Hvap;
//step4 - water vapour at 298K is heated to 373.15K
Cvap = 1.884;//kJ/kgK
T3 = 373.15;//K
H4 = W * Cvap * ( T3 - T2 );
//step5 - formation of 200kg of 50% NaOH solution at 298K
Hsolu = -25.89;//kJ/mol
H5 = Pfeed * m *1000 *Hsolu/ (40*100);
//step6 - Heating the solution from 298K to 380K
Csolu = 3.34;//kJ/kg
T4 = 380;//K
H6 = P * Csolu * (T4 - T2);
Htotal = H1 + H2 + H3 + H4 + H5 + H6;
disp("kJ",Htotal,"The enthalpy change accompanying the complete process = ")