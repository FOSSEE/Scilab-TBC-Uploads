clear;
clc;

//Example - 17.22
//Page number - 626
printf("Example - 17.22 and Page number - 626\n\n");

// Given
T = 400;//[K] - Temperature
P = 1;//[atm] - Pressure
R = 1.987;//[cal/mol-K] - Universal gas consatnt

delta_G_n_pentane_400 = 9600;//[cal/mol] - Standard Gibbs free energy of formation of n-pentane at 400 K
delta_G_iso_pentane_400 = 8200;//[cal/mol] - Standard Gibbs free energy of formation of iso-pentane at 400 K
delta_G_neo_pentane_400 = 9000;//[cal/mol] - Standard Gibbs free energy of formation of neo-pentane at 400 K

// The three reactions for the formation of these isomers can be written as follows
// 5*C + 6*H2 = n-pentane
// 5*C + 6*H2 = iso-pentane
// 5*C + 6*H2 = neo-pentane

// We can eliminate elemental carbon and hydrogen as they are not present in equilibrium reaction mixture and get the following two sets of independent reactions
// n-pentane = iso-pentane 
// n-pentane = neo-pentane 

// or,
// iso-pentane = n-pentane 
// iso-pentane = neo-pentane 

// or,
// noe-pentane = iso-pentane 
// neo-pentane = n-pentane 

// Let us take the following set of independent reactions
// iso-pentane = n-pentane   //     (reaction 1)
delta_G_rkn_1 = delta_G_n_pentane_400 - delta_G_iso_pentane_400;//[cal]
K_1 = exp(-delta_G_rkn_1/(R*T));
// iso-pentane = neo-pentane //     (reaction 2)
delta_G_rkn_2 = delta_G_neo_pentane_400 - delta_G_iso_pentane_400;//[cal]
K_2 = exp(-delta_G_rkn_2/(R*T));

// Let the initial number of moles be
// n_iso_pentane = 1
// n_n_pentane = 0
// n_neo_pentane = 0

// Let the reaction coordinate at equilibrium for the two reaction be X_1 and X_2 respectively
// At equilibrium, the moles of the components be
// n_iso_pentane_eq = 1 - X_1 - X_2
// n_n_pentane_eq = X_1
// n_neo_pentane_eq = X_2
// Total moles = 1 

// Pressure has no effect on these reactions ( P = 1 atm) and therefore
Ky_1 = K_1;
Ky_2 = K_2;

// From reaction (1), we get
// Ky_1 = X_1/(1-X_1-X_2)

// From reaction (2), we get
// Ky_2 = X_2/(1-X_1-X_2)

// Putting the value of X_1 from first equation into the second we get
// X_1 = (Ky_1*(1-X_2))/(1+Ky_1)
// Now putting it into the second equation we grt
// Ky_2 = X_2/(1-((Ky_1*(1-X_2))/(1+Ky_1))-X_2)
// Now solving for X_2
deff('[y]=f(X_2)','y= Ky_2 - X_2/(1-((Ky_1*(1-X_2))/(1+Ky_1))-X_2)');
X_2 = fsolve(0.8,f);

// Therefore X_1 can be calculated as
X_1 = (Ky_1*(1-X_2))/(1+Ky_1);

// Finally the mole fractions of the components at equilibrium
y_n_pentane = X_1;
y_neo_pentane = X_2;
y_iso_pentane = 1 -X_1 - X_2;

printf(" The equilibrium composition is given by, y_n_pentane = %f, y_neo_pentane = %f and y_iso_pentane = %f\n\n\n",y_n_pentane,y_neo_pentane,y_iso_pentane);

// Let us consider another set of independent reactions

// n-pentane = iso-pentane   //     (reaction 3)
delta_G_rkn_3 = delta_G_iso_pentane_400 - delta_G_n_pentane_400;//[cal]
K_3 = exp(-delta_G_rkn_3/(R*T));
// n-pentane = neo-pentane //     (reaction 4)
delta_G_rkn_4 = delta_G_neo_pentane_400 - delta_G_n_pentane_400;//[cal]
K_4 = exp(-delta_G_rkn_4/(R*T));

// Let the initial number of moles be
// n_n_pentane = 1
// n_iso_pentane = 0
// n_neo_pentane = 0

// Let the reaction coordinate at equilibrium for the two reaction be X_3 and X_4 respectively
// At equilibrium, the moles of the components be
// n_n_pentane_eq = 1 - X_3 - X_4
// n_iso_pentane_eq = X_4
// n_neo_pentane_eq = X_4
// Total moles = 1 

// Pressure has no effect on these reactions (P = 1 atm) and therefore
Ky_3 = K_3;
Ky_4 = K_4;

// From reaction (3), we get
// Ky_3 = X_3/(1-X_3-X_4)

// From reaction (4), we get
// Ky_4 = X_4/(1-X_3-X_4)

// Putting the value of X_3 from first equation into the second we get
// X_3 = (Ky_3*(1-X_4))/(1+Ky_3)
// Now putting it into the second equation we grt
// Ky_4 = X_4/(1-((Ky_1*(1-X_4))/(1+Ky_3))-X_4)
// Now solving for X_4
deff('[y]=f1(X_4)','y= Ky_4 - X_4/(1-((Ky_3*(1-X_4))/(1+Ky_3))-X_4)');
X_4 = fsolve(0.8,f1);

// Therefore X_3 can be calculated as
X_3 = (Ky_3*(1-X_4))/(1+Ky_3);

// Finally the mole fractions of the components at equilibrium
y_n_pentane1 = 1 - X_3 - X_4;
y_neo_pentane1 = X_4;
y_iso_pentane1 = X_3;

// The final composition does not depend on the set of reactions considered. 

printf(" For another set of independent reactions considered\n");
printf(" The equilibrium composition is given by, y_n_pentane = %f, y_neo_pentane = %f and y_iso_pentane = %f\n\n\n",y_n_pentane1,y_neo_pentane1,y_iso_pentane1);
printf(" Thus the final composition does not depend on the set of reactions considered\n\n\n");
printf(" The number of independent reactions taking place is two");

