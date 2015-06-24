//clc()
N = 100;//mol flue gas
//Carbon balance,
//x is the feed of methane, w is water in flue ga, y is the oxygen supplied
xco2 = 0.019;
xch2o = 0.117;
xo2 = 0.038;
xch4 = 0.826;
xc = xco2 + xch2o + xch4;
Nc = xc * N;
Nch4i = Nc;
//Hydrogen balance,
xh2 = xch2o + xch4*2;
w = 2 * (Nch4i) - xh2*N;
//oxygen balance
No2s = (xco2 + xch2o/2 + xo2)*N + w/2;
y = No2s;
T1 = 298;//K
T2 = 573;//K
T3 = 673;//K
//oxygen cooled from 573K and methane from 673 to 298K 
Ho573 = 30.5;//J/molK
Hch4673 = 45.9;//J/molK
H1 = y * Ho573 * (T1 - T2) + Nch4i * Hch4673 * (T1 - T3);
//CH4 + O2 = CH2O + H2O        Hr1 = -282.926kJ
//CH4 + 2O2 = CO2 + 2H2O       Hr2 = -802.372kJ
Hr1 = -282.926;//kJ
Hr2 = -802.372;//kJ
H2 = xch2o*N*Hr1 + xco2*N*Hr2;
T4 = 873;//K
Ho = 31.9
Hch4 = 51.4;
Hco2 = 46.3;
Hch2o = 47.1;
Hh2o = 36.3;
H3 = ((xco2 * Hco2 + xo2 * Ho + xch4 * Hch4 + Hch2o*xch2o)*N + w * Hh2o)*(T4 - T1);
Htotal = H1/1000 + H2 + H3/1000;
Nch2o = xch2o * N;
mch2o = Nch2o * 30.016/1000;//kg
//for 1000 kg of formaldehyde produced,
H = Htotal * 1000 / mch2o;
disp("kJ",H,"The amount of heat to be removed per 1000kg of formaldehyde produced = ")