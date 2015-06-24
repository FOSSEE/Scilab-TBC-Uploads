//clc()
Nflue = 100;//kmole
NCO2 = 16.4;
NCO = 0.4;
NO2 = 2.3;
NN2 = 80.9;
PCF = 80.5;//% ( Feed )
PO = 5.0;//%
PHF = 4.6;//%
PN = 1.1;//%
Pash = 8.8;//%
//Taking Carbon balance,
W = (NCO2 + NCO)*12 / (PCF / 100);
mCO2 = NCO2 * 44;
mCO = NCO * 32;
mO2 = NO2 * 28;
mN2 = NN2 * 28.014;
mtotal = mCO2 + mCO + mO2 + mN2;
Mdryflue = mtotal * 100/ W;
disp("kg",Mdryflue,"(a)The weight of dry gaseous products formed per 100 kg of coal fired = ")
//taking nitrogen balance,
x = (mN2 - W*PN/100)/28.014;
Noxygen = x * 21 / 79;
Nrequired = W * (PCF /12 + PHF/(2*2.016) - PO/32)/100;
Pexcess = (Noxygen - Nrequired)*100/Nrequired ;
disp("%",Pexcess,"(b)Percent excess air supplied for combustion = ")
