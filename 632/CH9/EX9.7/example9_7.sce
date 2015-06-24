//clc()
F = 100;//kg
xf = 0.25;
x2 = 7/107;
P1 = 10;//%
W3 = P1 * F * (1-xf)/100;//(W3 - weight of water evaporated)
// let W1 and W2 be weight of crystal and weight of mother liquor remaining after crystallization resp.,
//F = W1 + W2 + W3
//100 = W1 + W2 + 7.5
//solute balance gives, F*xf = W1*x1 + W2*x2
//100*0.25 = W1*1+W2 * 0.0654
W2 = (F - W3 - F*xf)/(1-x2);
W1 = F - W3 - W2;
disp("kg",W1,,,"yeild of the crystals = ")