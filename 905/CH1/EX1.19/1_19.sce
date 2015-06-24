clear;
clc;

// Illustration 1.19
// Page: 54

printf('Illustration 1.19 - Page:54 \n\n');
// Solution

//*****Data*****//
// a-CuS04    b-H2O
T = 273; // [K]
delta = 0.01; // [mm]
sol_ab = 24.3; // [gram/100 gram water]
den_ab = 1140; // [kg/cubic m]
D_ab = 3.6*10^-10; // [square m/s]
den_b = 999.8; // [kg/cubic m]
//*****//

// both fluxes are in the same direction; therefore, they are both positive and relation is N_b = 5N_a (where N_b and N_a are molar fluxes of component 'a' and 'b') 
// From equation (1.76), si_a = 1/6 = 0.167
si_a = 0.167;
// Calculation of mole fraction of component 'a'
// Basis: 100 gram H2O (b)
M_a = 159.63; // [gram/mole]
M_b = 18; // [gram/mole]
M_c =249.71; // [here M_c is molecular mass of hydrated CuSO4, gram/mole]
m_a = 24.3; // [gram]
m_c = m_a*(M_a/M_c); // [here m_c is the mass of  CuSO4 in 24.3 gram of crystal, gram]
m_d = m_a-m_c; // [here m_d is mass of hydration of water in the crystal, gram]
m_b_total = 100+m_d; // [total mass of water, gram]

x_a1 = (m_c/M_a)/((m_c/M_a)+(m_b_total/M_b));
x_a2 = 0;

// At point 1, the average molecular weight is
M_1 = x_a1*M_a+(1-x_a1)*M_b; // [gram/mole]
// At point 2, the average molecular weight is
M_2 = x_a2*M_a+(1-x_a2)*M_b
// Molar density at point 1 and 2
row_1 = den_ab/M_1; // [kmole/cubic m]
row_2 = den_b/M_2
row_avg = (row_1+row_2)/2; // [kmole/cubic m]

// Using equation 1.96

N_a = si_a*D_ab*row_avg*log((si_a-x_a2)/(si_a-x_a1))/(delta*10^-3); // [kmole/square m.s]
rate = N_a*M_c*3600; // [kg/square m of crystal surface area per hour]
printf("the rate at which the crystal dissolves in solution is %f kg/square m of crystal surface area per hour",rate);
   
