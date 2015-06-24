m0 = 0.91 * 10^-30; //in kg
h = 1.05*10^-34; //in J.s
E = 1; // energy in eV
q = 1.6*10^-19;
N3 = 2^0.5*(m0*q)^1.5*E^0.5/((%pi)^2*h^3);
disp(N3*10^-6,"The density of states for a 3D system in per eV per cm cube")
N2 = m0*q/(%pi*h^2);
disp(N2*10^-4,"The density of states for a 2D system in per eV per cm square")