// Scilab code Exa4.8.4: To calculate the life time of sun for given reaction : Page 196 (2011)
// 4*H(1,1)= He(2,4)+2*e(1,0)+2*v+G is the reaction
E_r = 3.9e+026; // Energy releasd in 1s, J
N = 1.2e+057; // Number of hydrogen atoms in the sun, atoms
M_d = 0.027599;// Mass difference, amu
E = M_d*931.47; // In terms of energy, MeV
E_t = N/4*E*1.6e-013; // Total energy available in the sun, J
t = E_t/(E_r*365*24*3600*10^9); // Life time of the sun, billion years
printf("\n Life time of the sun : %5.1f billion years", t)
// Result  
//        Life time of the sun : 100.3 billion years
