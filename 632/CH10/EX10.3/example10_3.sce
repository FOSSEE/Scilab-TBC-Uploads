//clc()
Nflue = 100;//kmol
NCO2 = 9;
NCO = 2;
NO2 = 3;
NN2 = 86;
NCflue = NCO2 + NCO ;
MC = 12;
mC = MC * NCflue ;
//let A kmol air supplied, taking N2 balance,
Nair = NN2 * 100/79;
NO2supplied = Nair - NN2;
// if CO in the flue gas was to be completely converted to CO2, then, the moles of oxygen present in the flue gas would be 3-1 =2kmol
Noexcess = NO2 - NCO/2;
Pexcess =  Noexcess * 100 / ( NO2supplied - Noexcess);
disp("%",Pexcess,"(a)Percentage excess air = ")
NwaterO = NO2supplied - NCO2 - NCO/2 - NO2;
NH2 = NwaterO*2;
mH2 = NH2 * 2;
xCF = 0.7
R = mC / mH2;
disp(R,"(b)Ratio of carbon to hydrogen in the fuel = ")
//let x be the amount of moisture in the feed, n it is given that 70% is carbon,therefore,
//0.7 = 3.32 / ( 1 + 3.32 + x )
x = R / xCF - 1 - R;
mH = x * 2.016 / 18.016;
mHtotal = mH + mH2;
Rtotal = mC / mHtotal;
disp(Rtotal,"(c)Ratio of carbon to total hydrogen in the fuel = ")
ntotal = R + 1  +x;
PH2 = 1*100/ntotal;
PH2O = x * 100 / ntotal;
disp("%",PH2,"(d)percentage of combustible hydrogen in the fuel = ")
disp("%",PH2O,"percentage of moisture in the fuel = ")
nH2Ototal = (PH2O + PH2 * 18.016 / 2.016)/100;
disp("kg",nH2Ototal,"(e)The mass of moisture in the flue gas per kg of fuel burned = ")
