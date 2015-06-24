// under stalled conditions
syms Kg K1 D;
A=60.8;
A*K1=Kg*D;
// given Kg=100 
Kg=100;
K1=50;
D=(A*K1)/Kg;
disp(D,"upslope=")