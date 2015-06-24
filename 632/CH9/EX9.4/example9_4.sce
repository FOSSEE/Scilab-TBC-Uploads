//clc()
D = 100;//kg of overhead product
xfa = 0.956;
xdw = 0.074;
xdb = 0.741;
xda = 0.185;
//water balance gives
F = D * xdw / (1 - xfa) ;
W = F * xfa - xda * D;
W1 = 100;
B = xdb*D;
Bused = B * W1 / W;
disp("kg",Bused,"Quantity of benzene required = ")
