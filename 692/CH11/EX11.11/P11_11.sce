//Example 11.11
//Simulation of IIR cascaded lattice filter structure
clear;
clc;
z=%z;
P3z= 0 + 0.44/z + 0.362/(z^2) +0.02/(z^3);
D3z= 1 + 0.4/z + 0.18/(z^2) - 0.2/(z^3);
Hz=P3z/D3z;
p1=coeff(numer(P3z));
p=mtlb_fliplr(p1)
disp(mtlb_fliplr(p),'The coefficients ofnumerator are = ');
d1=coeff(numer(D3z-1));
d=mtlb_fliplr(d1)
disp(mtlb_fliplr(d),'The coefficients ofnumerator are = ');
d1_1dash=(d(1)-d(3)*d(2))/(1-d(3)*d(3));
disp(d1_1dash,"d1_1dash = ");
d2_1dash=(d(2)-d(3)*d(1))/(1-d(3)*d(3));
disp(d2_1dash,"d2_1dash  ");
d1_2dash=(d1_1dash)/(1+d2_1dash);
disp(d1_2dash,"d1_2dash = ");
a1=p(3);
disp(p(3),'a1 = ');
a2=p(2)-a1*d(1);
disp(p(2)-a1*d(1),'a2 = ');
a3=p(1)-a1*d(2)-a2*d1_1dash;
disp(p(1)-a1*d(2)-a2*d1_1dash,'a3 = ');
disp(0-a1*d(3)-a3*d1_2dash-a2*d2_1dash,'a4 = ');



