dd = 60e-06;
mw = 1;
st = 0.07;
dw = 1000;
dp = 15e-03;
N = (mw*6)/(%pi*dd^3*dw);
Af = %pi*dd^2*N;
S_L = 4/(dp*dw);
W = st*(100-S_L);
disp("J",W,"Work done during automization is")
