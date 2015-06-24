//Determine inductance per meter and outer conductor diameter

Z0 = 75;
C = 69e-12;
k = 2.23;
d = 0.584;

L = Z0^2*C;
D = d * 10^(Z0/(138/sqrt(k)));

disp(L, 'Inductance per meter (in H/m)')
disp(D, 'Outer conductor diameter (in mm)')