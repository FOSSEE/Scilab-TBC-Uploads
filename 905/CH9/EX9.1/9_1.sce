clear;
clc;

// Illustration 9.1
// Page: 508

printf('Illustration 9.1 -  Page: 508\n\n');

// solution
//*****Data*****//
//  A-solute    B-solvent
ci_f = 50; // [feed side concentration, mole/cubic m]
ci_p = 15; // [permeate side concentration, mole/cubic m]
t = 2*10^-4; // [membrane thickness, cm]
q_A = 176; // [permeability, barrer]
D = 4*10^-1; // [tube inside diameter, cm]
D_A = 5*10^-5; // [diffusuvity, square cm/s]
Re = 20000; // [reynolds number]
Sc = 450; // [Schmidt number]
mtc_p = 0.12; // [square cm/s]
//*****//

// From equation 9.6, 1 barrer = 8.3*10^-9 square cm/s 
// Therefore 
q_A = q_A*8.3*10^-9; // [square cm/s]
Q_A = q_A/t; // [permeance, cm/s]
// The mass-transfer coefficient on the feed side is from equation (2-75) for turbulent flow of a liquid inside a circular pipe:
Sh = 0.023*Re^0.83*Sc^(1/3);
// Now mass transfer coefficient
k_af = Sh*D_A/D; // [cm/s]
// Total resistance to mass transfer 
res_total = (1/k_af)+(1/Q_A)+(1/mtc_p); // [s/cm]
// Transmembrane flux of solute A
N_A = (ci_f-ci_p)/(res_total*100); // [mole/square m.s]

printf("The transmembrane flux of solute A is %e mole/square m.s\n\n",N_A);

percent_mem_res = ((1/Q_A)/res_total)*100; // [%]
printf("Membrane resistance is %f percent of the total\n\n",percent_mem_res);