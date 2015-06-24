clear;
clc;

// Illustration 3.2
// Page: 162

printf('Illustration 3.2 -  Page: 162\n\n');

// solution
//*****Data*****//
// A-oxygen   B-water
T = 298; // [K]
H = 4.5*10^4; // [atm/mole fraction]
P = 1; // [atm]
row_B = 1000; // [density of water, kg/cubic m]
M_B = 18; // [Molecular mass of water, gram/mole]
M_A = 32; // [,Molecular mass of oxygen, gram/mole]
//*****//

// Dry air contains 21% oxygen; then p_A = y*P = 0.21 atm
// Therefore using Henry's Law
p_A = 0.21; // [atm]
x_A = p_A/H; // [mole fraction in liquid phase]

// Basis: 1L of saturated solution
// For 1 L of very dilute solution of oxygen in water, the total moles of solution, n_t, will be approximately equal to the moles of water
n_t = row_B/M_B
// Moles of oxygen in 1L saturated solution is
n_o = n_t*x_A; // [mole]
// Saturation concentration
c_A = n_o*M_A*1000; // [mg/L]
printf("The saturation concentration of oxygen in water exposed to dry air at 298 K and 1 atm is %f mg/L\n\n",c_A); 