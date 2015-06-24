//Example 8.18
//Cascaded lattice realization of Power-symmetric FIR Transfer Function
clear;
clc;
z=%z;

H5z=(1 + 0.3/z + 0.2/z^2 - 0.376/z^3 - 0.06/z^4 + 0.2/z^5);
disp(H5z,'FIR filter = ');
G5=horner(H5z,-1/z);
G5z=G5/z^5;
disp(G5z,'FIR filter = ');
k5=0.2;
H3z=(1/(1+k5^2))*(H5z - k5*G5z);
disp(H3z,'Synthesis eqn,H3z = ');
G3z=(1/(1+k5^2))*(k5*H5z + G5z);
disp(G3z,'Synthesis eqn,G3z = ');
k=coeff(numer(G3z));
disp(k(4),'k3 = ');
disp(k(2),'k1 = ');