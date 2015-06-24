//clc()
F = 200;//kmol/h
//F, D and W be the flow rates of the feed, the distillate and residue resp., xf , xd and xw be the mole fraction of ethanol in the fee, distillate and the residue resp.
xf = 0.10;
xd = 0.89;
xw = 0.003;
//total balance gives, F = D + W
//D + W = 200              (1)
//Alcohol balance gives, F*xf = D*xd + W*xw
//0.89*D+0.003*W = 20      (2)
//solving 1 and 2
D = 21.87;//kmol/h
W = 178.13;//kmol/h
Nawasted = W*xw;
mmakeup = Nawasted * 46*24;
disp("kg",mmakeup,"The make up alcohol required per day = ")