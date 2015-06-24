// Exa 8.5
clc;
clear;
close;
format('v',8)
// Given data
d_r = 8;// diameter of ring in cm
d_r = d_r*10^-2;// in m
d_i = 1;// diameter of iron in cm
d_i = d_i * 10^-2;// in m
Permeability = 900;
gap = 2;// in mm
gap = gap * 10^-3;// in m
N = 400;
I = 3.5;// in A
l_i = (%pi*d_r)-gap;// length of iron in m
a = (%pi/4)*(d_i^2);// in m^2
mmf = N*I;// in AT
disp(mmf,"The mmf in AT is");
miu_o = 4*%pi*10^-7;
miu_r = 900;
Si = l_i/(miu_o*miu_r*a);// in AT/Wb
miu_r = 1;
Sg = gap/(miu_o*miu_r*a);// in AT/Wb
S_T = Si+Sg;// in AT/Wb
disp(S_T,"The total reluctance in AT/Wb is");
phi = mmf/S_T;// in Wb
disp(phi,"The flux in Wb is");
// phi = B*a;
B = phi/a;// in Wb/m^2
disp(B,"The flux density of the ring in Wb/m^2");
