//clc()
m = 100;//kg (of 60% solution)
//w - water added to the original solution
//w1 - wt. of Na2S2O3.5H2O crystallized
//w2 - wt. of mother liquor obtained
//w3 - solution carried away by the crystals
xf = 0.6;
Mna2s2o3 = 158;
Mna2s2o35h2o = 248;
mcrystals = m * xf * Mna2s2o35h2o / Mna2s2o3;
// free water available = m + w - 1 - mcrystals
//concentration of impurity = 1/(w+4.823)
//total balance, 100 - 1 + w = w1 + w2 + w3
//w1 + w2 + w3 - w = 99
//Na2S2O3 balance, 60 = (w1 + w2 * 1.5/2.5 + w3 * 1.5/2.5)*158/248
//w1 + 0.6 * w2 + 0.6 * w3 = 94.177
//each gram crystals carry 0.05 kg solution,
//w3 = 0.05 * w1
//impurity % = 0.1
//impurity = w3 /(2.5 * (w+4.823))
//solving above equations, we get
w = 14.577;//kg
w1 = 65.08;//kg
w2 = 45.25;//kg
w3 = 0.05 * w1;
disp("kg",w,"(a)amount of water  added = ")
disp("kg",w1,"(b)amount of Na2S2O3.5H2O crystals added = ")
m1 = w1 * Mna2s2o3 / Mna2s2o35h2o + w3 * 1.5 * Mna2s2o3 / (2.5 * Mna2s2o35h2o);
P = m1*100/(m*xf);
disp("%",P,"(c)Percentage recovery of Na2S2O3 = ")
