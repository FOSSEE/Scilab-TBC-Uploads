//clc()
F = 100;//kg
//F, D and W be the flow rates of the feed, the distillate and bottom product resp., xf , xd and xw be the mole fraction of methanol in the fee, distillate and the bottom product resp.
xf = 0.20;
xd = 0.97;
xw = 0.02;
//using, F = D + W and F*xf + D*xd + W*xw,we get
D = 18.95;//kg/h
W = 81.05;//kg/h
R = 3.5;
//R = L / D
//for distillate = 1kg
D1 = 1;//kg
L = R*D1;
//Taking balance around the condenser,
G = L + D1;
mcondensed = G * D / F;
disp("kg",D,"(a)Amount of distillate = ")
disp("kg",W,"   Amount of Bottom Product = ")
disp("kg",G,"(b)Amount of vapour condensed per kg of distillate = ")
disp("kg",mcondensed,"(c)Amount of vapour condensed per kg of feed = ")