clear;
clc;

//Example - 17.4
//Page number - 600
printf("Example - 17.4 and Page number - 600\n\n");

// Given
T = 600;//[K] -  Reactor temperature
P = 4;//[atm] - Reactor pressure
K = 1.175;// Equilibrium constant

// (1/2)*N2 + (3/2)*H_2 - NH3

// Initial number of moles of the components are
n_N2 = 1;
n_H2 = 3;
n_HN3 = 0;

// Let the reaction coordinate at equilibrium for the reaction be X.
// At equilibrium ,the moles of the components be 
// n_N2 = 1 - 0.5*X
// n_H2 = 3 - 1.5*X
// n_NH3 = X
// Total moles = 4 - X

// We have, K = Ky*Kp
Kp = P^(1-2);//[atm^(-1)]
Ky = K/(Kp);

// Ky = y_NH3/(y_N2^(1/2)*y_H2^(3/2)) = (X/(4-X))/(((1-0.5*X)/(4-X))^(1/2)*((3-1.5*X)/(4-X))^(3/2))
// Solving the above equation we get
deff('[y]=f(X)','y=Ky - (X/(4-X))/(((1-0.5*X)/(4-X))^(1/2)*((3-1.5*X)/(4-X))^(3/2))');
X = fsolve(0.1,f);

y_NH3 = X/(4-X);// Mole fraction of NH3 at equilibrium

printf(" The value of Kp = %f and Ky = %f \n",Kp,Ky);
printf(" The mole fractions of NH3 at equilibrium is %f\n\n",y_NH3);

// If reaction carried out at constant temperature and volume

// We know that for ideal gas, P*V = n*R*T and thus P is directly proportional to n at constant V and T.
// Let P = k*n
// Initially P = 4 atm and n = 4 moles, thus K = 1 and we get p = n, where P is in atm. 
// Thus at equilibrium P = 4 - X

// Ky = K/Kp = 1.175*P = 1.175*(4 - X)
// (X/(4-X))/(((1-0.5*X)/(4-X))^(1/2)*((3-1.5*X)/(4-X))^(3/2)) = 1.175*(4 - X)
// Solving the above equation we get
deff('[y]=f1(X)','y=(X/(4-X))/(((1-0.5*X)/(4-X))^(1/2)*((3-1.5*X)/(4-X))^(3/2))-1.175*(4-X)');
X_prime = fsolve(1,f1);

// Therefore at equilibrium 
P_prime = 4 - X_prime;
y_NH3_prime = X_prime/(4-X_prime);

printf(" If reaction is carried out at constant temperature and volume,then\n");
printf(" The equilibrium pressure is %f atm\n",P_prime);
printf(" The equilibrium mole fractions of NH3 in the reactor is %f\n\n",y_NH3_prime);








