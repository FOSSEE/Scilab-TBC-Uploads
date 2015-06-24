// Calculating Difference mode, Common mode gain and CMRR
clc;
Vo=3;
Vd=30*10^-3;
Ad=Vo/Vd;
disp(Ad,'difference mode gain=')
Vo=5*10^-3;
Vc=500*10^-3;
Ac=Vo/Vc;
disp(Ac,'Common mode gain=')
CMRR=Ad/Ac;
disp(CMRR,'Common mode rejection ratio=')