k= 8.617*10^(-5); //Boltzmann constant, eV/K
To=273; //initial temperature, K
E1= -13.6; //energy of ground state, eV
E2= -3.4; //energy of first excited state, eV
dE= E2-E1; //difference in energy levels
g1=2; //number of energy states for E1
g2=8; //number of energy states for E2

J= dE/(k*To);
Nratio1= (g2/g1)*(%e)^(-J); //ratio of number of atoms in level 2 and level 1 at To

T1=10273; //K
J1= J*To/T1; 
Nratio2= (g2/g1)*(%e)^(-J1); //at T1

disp(To,"The ration at 273 K is: ")
disp(T1,"The ratio at 10273 k is: ")