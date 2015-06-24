n = 10^22; // electrons per cm cube
h = 1.05457*10^-34; //in J.s
m0 = 0.91 * 10^-30; //in kg
q = 1.6*10^-19;
E= 0.5*h^2*(3*%pi*%pi*n)^(2/3)/(m0*q);
disp(E*10^4,"The Fermi energy (in eV) is the highest occupied energy state at 0 K is")
vel = h*(3*%pi*%pi*n*10^6)^(1/3)/m0;
disp(vel, "The fermi velocity (in m/s) is")