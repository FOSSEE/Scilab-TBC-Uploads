//clc()
Nflue = 100;//kmoles
NCO2 = 9.05;
NCO = 1.34;
NO2 = 9.98;
NN2 = 79.63;
PCO2F = 9.2;//% ( Feed )
PCOF = 21.3;//%
PH2F = 18;//%
PCH4F = 2.5;//%
PN2F = 49;//%
//Taking carbon balance, 
F = (NCO2 + NCO )/ ( (PCO2F + PCOF + PCH4F)/100);
//Nitrogen balance gives,
Nair = (NN2 - F*PN2F/(100) )* 100 / 79;
R = Nair/F;
disp(R,"(a)molar Ratio of air to fuel = ")
Oexcess = NO2 - NCO / 2;
Pexcess = Oexcess *100/ (Nair*21/100 - Oexcess);
disp("%",Pexcess,"(b)Percent excess of air = ")
NN2F = F * PN2F / 100;
PN2F = NN2F *100/ NN2;
disp("%",PN2F,"(c)Percent of nitrogen in the flue gas that came from fuel = ")