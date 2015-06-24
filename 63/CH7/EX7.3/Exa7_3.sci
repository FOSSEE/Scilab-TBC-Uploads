//Determine the outer conductor diameter of a coaxial cable

Z0 = 2000;
k = 2.56;
d = 0.025;


D = d * 10^(Z0/(138/sqrt(k)));
D1 = D/1e+6;
D2 = D1/9.44e+12;

disp(D2, 'Outer conductor diameter is (in light years)')