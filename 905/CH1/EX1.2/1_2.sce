clear;
clc;

// Illustration 1.2
// Page: 7

printf('Illustration 1.2 - Page: 7\n\n');

//*****Data*****
// Component  a-KNO3   b-H20
T = 293; // [K]
s_eqm = 24; // [percent by weight, %]
row = 1162; // [density of saturated solution, kg/cubic m]
//*****//

printf('Illustration 1.2 (a)- Page: 7\n\n');
// Solution (a)

// Basis: 100 kg of fresh wash solution
m_a = (s_eqm/100)*100; // [kg]
m_b = 100 - m_a; // [kg]
M_a = 101.10; // [gram/mole]
M_b = 18.02; // [gram.mole]
// Therefore moles of component 'a' and 'b' are
n_a = m_a/M_a; // [kmole]
n_b = m_b/M_b; // [kmole]

m_total = 100; // [basis, kg]
n_total = n_a+n_b; // [kmole]
// Average molecular weight
M_avg = m_total/n_total; // [kg/kmole]
// Total molar density of fresh solution
C = row/M_avg; // [kmole/cubic m]
printf("Total molar density of fresh solution is %f kmole/cubic m\n\n",C);

printf('Illustration 1.2 (b)- Page: 8\n\n');
// Solution (b)

// mole fractions of components 'a' and 'b'
x_a = n_a/n_total;
x_b = n_b/n_total;
printf("Mole fraction of KNO3 and H2O is %f %f",x_a,x_b); 