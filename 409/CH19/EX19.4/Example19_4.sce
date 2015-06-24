clear ;
clc;
// Example 19.4
printf('Example 19.4\n\n');
//Page no. 577
// Solution 

// Basis : 100 g solution
F = 100 ;// Amount of solution-[g]
P_atm = 1 ;//[atm]
P = 760 ;// Total pressure -[mm of Hg]
wf_hex = 68.6/100 ;//Weight fraction of hexane in  mixture
wf_tol = 31.4/100 ;//Weight fraction of toluene in  mixture
mw_hex = 86.17 ;// Mol.wt. of hexane-[g]
mw_tol = 92.13 ;// Mol.wt. of toluene-[g]
mol_hex = wf_hex *F/mw_hex ;// moles of hexane-[g mol]
mol_tol = wf_tol*F/mw_tol ;// moles of toluene-[g mol]
mol_total = mol_hex + mol_tol ;// Total moles in mixture-[g mol]
molf_hex = mol_hex/mol_total ;// Mole fraction of hexane 
molf_tol = mol_tol/mol_total ;// Mole fraction of toluene 

// Get vapour pressure of hexane and toluene at 80 deg. C from Perry, it is
vp_hex = 1020 ;//  vapour pressure of hexane-[mm of Hg]
vp_tol = 290  ;//  vapour pressure of toluene-[mm of Hg]
K_hex = vp_hex/P ;// K-value of hexane
K_tol = vp_tol/P  ;// K-value of toluene
rec_K_hex = 1/K_hex ;// Reciprocal of K-value of hexane
rec_K_tol = 1/K_tol ;// Reciprocal of K-value of toluene

// Let L/F = x, then use eqn. 19.11 to find x(L/F) 
deff('[y] = g(x)','y = (molf_hex)/(1-x*(1-rec_K_hex)) + (molf_tol)/(1-x*(1-rec_K_tol))-1');
x = fsolve(1,g) ;// L/F value

printf('\n Fraction of liquid(L/F) that will remain at equilibrium after vaporization is %.3f.\n ',x);