kBT = 26*10^-3; //in eV
m0 = 0.91 * 10^-30; //in kg
me = 0.067*m0;
q = 1.6*10^-19;
h = 1.05457*10^-34; //in J.s
N = 2*(me*q*kBT/2/%pi/h^2)^1.5;
disp(N*10^-6, "The effective density of states (in per cm cube) is")
disp("In silicon, the density of states mass is to be used in the effective density of states, which is")
kdos = 6^(2/3)*(0.98*0.19*0.19)^(1/3);
disp(kdos,"m0 times");
mdos = kdos*m0;
disp(mdos,"In silicon, the density of states mass is to be used in the effective density of states, which is")