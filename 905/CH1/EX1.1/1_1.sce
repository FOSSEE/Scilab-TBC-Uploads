clear;
clc;

// Illustration 1.1
// Page: 6

printf('Illustration 1.1 - Page: 6\n\n');

//*****Data*****
T = 300; // [K]
P = 500; // [kPa]
R = 8.314; // [J/mole.K]
//*****//
printf('Illustration 1.1 (a) - Page: 6\n\n');
// Solution (a)
// Using equation 1.7 
C = P/(R*T); // [Total molar concentration, kmole/cubic m]
printf("Total molar concentration in the gas feed is %f kmole/cubic m\n\n",C);

printf('Illustration 1.1 (b) - Page: 7\n\n');
// Solution (b)

// Mixture of gases 
// Components  a-CH4 , b-C2H6 , c-nC3H8 , d-nC4H10
// Basis: 100 kmole of gas mixture
n_a = 88; // [kmole]
n_b = 4; // [kmole]
n_c = 5; // [kmole]
n_d = 3; // [kmole]
M_a = 16.04; // [gram/mole]
M_b = 30.07; // [gram/mole]
M_c = 44.09; // [gram/mole]
M_d = 58.12; // [gram/mole]
m_a = n_a*M_a; // [kg]
m_b = n_b*M_b; // [kg]
m_c = n_c*M_c; // [kg]
m_d = n_d*M_d; // [kg]
n_total = n_a+n_b+n_c+n_d; // [kmole]
m_total = m_a+m_b+m_c+m_d; // [kg]
M_avg = m_total/n_total; // [kg/kmole]
row = C*M_avg; // [mass density, kg/cubic m]
printf("Average molecular weight of gas feed is %f kg/kmole\n",M_avg);
printf("Density of gas feed is %f kg/cubic m\n\n",row);

printf('Illustration 1.1 (c) - Page: 7\n\n');
// Solution (c)

// Mass fraction of each component
x_a = m_a/m_total;
x_b = m_b/m_total;
x_c = m_c/m_total;
x_d = m_d/m_total;
printf("Mass fraction of CH4, C2H6, nC3H8, nC4H10 are %f, %f, %f, %f respectively",x_a,x_b,x_c,x_d);