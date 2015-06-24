//Example 8.10
//Cascaded lattice realization of IIR Transfer Function
clear;
clc;
z=%z;
P3z= -0.2 + 0.18/z + 0.4/(z^2) + 1/(z^3);
D3z=  1 + 0.4/z + 0.18/(z^2) - 0.2/(z^3);
A3z=P3z/D3z;
p1=coeff(numer(P3z));
p=mtlb_fliplr(p1);
disp(mtlb_fliplr(p),'The coefficients ofnumerator are = ');
d1=coeff(numer(D3z-1));
d=mtlb_fliplr(d1)
disp((d),'The coefficients ofnumerator are = ');
d1_1dash=(d(1)-d(3)*d(2))/(1-d(3)*d(3));
disp(d1_1dash,"d1_1dash = ");
d2_1dash=(d(2)-d(3)*d(1))/(1-d(3)*d(3));
disp(d2_1dash,"d2_1dash  ");
d1_2dash=(d1_1dash)/(1+d2_1dash);
disp(d1_2dash,"d1_2dash = ");
A1z=(d1_2dash + 1/z)/(1 + d1_2dash/z);
disp(A1z,'A1z = ');
A2z=(d2_1dash + d1_1dash*1/z + 1/z^2)/(1 + d1_1dash/z - d2_1dash/z^2);
disp(A2z,'A2z = ');





