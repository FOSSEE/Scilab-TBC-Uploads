//EXAMPLE 6.34
//y[n]=x[n-1] - 1.2*x[n-2] + x[n-3] + 1.3*y[n-1] -1.04*y[n-2] + 0.222*y[n-3] 
//Transfer function determination

clc;
clear;
z=%z;
disp('Given the difference equation taking ztransform on both sides :')
Yz = z^2 -1.2*z +1;
Xz = z^3 -1.3*z^2 + 1.04*z -0.222;
Hz = Yz/Xz;
disp(Hz,'The transfer function is = ')
elts = factors(Xz);
disp(elts,'factors of Xz are = ')
plzr(Hz);

