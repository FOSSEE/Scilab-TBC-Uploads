//Chapter 14
//Example 14.2
//Page 381
//parallel
clear;clc;
P1 = 500;pf1 = 0.85;V1 = 20;n1 = 3600;
P2 = 1333;pf2 = 0.9;V2 = 22;n2 = 1800;
Pbase = 100;
H1 = 4.8;H2 = 3.27;
KE = H1 * P1 + H2 * P2;
disp(KE,'The total kinetic energy of rotation of the two machines in MJ is')
disp(KE/Pbase,'The inertia constant for the equivalent machine on 100-MVA base in MJ/MVA is')