clear;
clc;

//Example - 17.23
//Page number - 628
printf("Example - 17.23 and Page number - 628\n\n");

// Given
T = 600;//[K] - Temperature
P = 1;//[atm] - Pressure
R = 1.987;//[cal/mol-K] - Universal gas consatnt

// CH4 + H2O = CO + 3*H2 //    (Reaction 1)
// CO + H2O = CO2 + H2  //     (Reaction 2)

K_1 = 0.574;// Equilibrium constant of first reaction
K_2 = 2.21;// Equilibrium constant of second reaction

// Initial number of moles of the components are
// n_CH4 = 1
// n_H2O = 5
// n_CO = 0
// n_H2 = O
// n_CO2 = 0

// Let the reaction coordinate at equilibrium for the two reaction be X_1 and X_2 respectively
// At equilibrium, the moles of the components be
// n_CH4_eq = 1 - X_1
// n_H20_eq = 5 - X_1 - X_2
// n_CO_eq = X_1 - X_2
// n_H2_eq = 3*X_1 + X_2
// n_CO2_eq = X_2
// Total moles = 6 + 2*X_1

// Since the pressure is 1 atm, K = Kp, Ky = K
Ky_1 = K_1;
Ky_2 = K_2;

// From reaction (1), we get
// Ky_1 = ((X_1-X_2)*(3*X_1+X_2)^(3))/((1-X_1)*(5-X_1-X_2)*(6+2*X_1)^(2))

// From reaction (2), we get
// Ky_2 = (X_2*(3*X_1+X_2))/((X_1-X_2)*(5-X_1-X_2))

// Let us assume a value of X_1
X_1 = 0.1;

fault = 10;
while(fault>0.05)
    deff('[y]=f(X_2)','y= Ky_1-((X_1-X_2)*(3*X_1+X_2)^(3))/((1-X_1)*(5-X_1-X_2)*(6+2*X_1)^(2))');
    X_2 = fsolve(0.8,f);
    X_2_prime = X_2;
    deff('[y]=f1(X_1_prime)','y= Ky_2-(X_2_prime*(3*X_1_prime+X_2_prime))/((X_1_prime-X_2_prime)*(5-X_1_prime-X_2_prime))');
    X_1_prime = fsolve(0.8,f1);
    fault=abs(X_1 - X_1_prime);
    X_1 = X_1 + 0.001;
end

n_CH4 = 1 - X_1;
n_H20 = 5 - X_1 - X_2;
n_CO = X_1 - X_2;
n_H2 = 3*X_1 + X_2;
n_CO2 = X_2;
Total_moles = 6 + 2*X_1;

printf(" The equilibrium composition of the resulting mixture is given by\n");
printf(" n_CH4 = % f mol\n n_H2O = %f mol\n n_CO = %f mol\n n_H2 = %f mol and\n n_CO2 = %f mol\n\n",n_CH4,n_H20,n_CO,n_H2,n_CO2);
printf(" The total number of moles is %f mol\n",Total_moles);

