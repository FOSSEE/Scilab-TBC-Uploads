//Converting current sources to voltage sources
// O=[i1;i2;vx]

A=[10,-3,4;-3,7,0;3,-3,-1]
O=inv(A)*[16;-6;0]

disp(O)