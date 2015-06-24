clear ;
clc;
// Example 28.1
printf('Example 28.1\n\n');
//page no. 869
// Solution 

// Given 
Ref_T = 77 ;//Reference temperature-[degree F]

//(a)
mol_NH3 = 1 ;// Moles of NH3 - [lb mol]
mw_NH3 = 17 ;//Molecular t. of NH3 -[lb]
mw_H2O = 18  ;//Molecular t. of H2O -[lb]
f1_NH3 = 3/100 ;// Fraction of NH3 in solution 
m_H2O = (mw_NH3/f1_NH3) - mw_NH3 ;// Mass of water in solution -[lb]
mol_H2O = m_H2O/mw_H2O  ;// Moles of H2O in solution -[lb mol]

printf('(a)  Moles of H2O in solution is %.1f  lb mol .\n ',mol_H2O);
printf('     As we can see that moles of water is 30 lb mol(approx), hence we will see H_soln from table corresponding to 30 lb mol water .\n ');
H_soln = -14800 ;// From table given in question in book -[Btu/lb mol NH3]
printf('     The amount of cooling needed is, %.0f Btu heat removed.\n ',abs(H_soln));

//(b)
V = 100 ;// Volume of solution produced -[gal]
f2_NH3 = 32/100 ;// Fraction of NH3 in solution 
// From Lange's Handbook of chemistry additional data is obtained , according to book it is as follows -
sg_NH3 = .889 ;// Specific gravity of NH3 
sg_H2O = 1.003 ;// Specific gravity of H2O
d_soln = sg_NH3*62.4*sg_H2O*100/7.48 ;// Density of solution - [lb / 100 gal]
NH3 = d_soln*f2_NH3/mw_NH3 ;// Mass of NH3 - [ lb mol/ 100 gal]
m1_H2O = (mw_NH3/f2_NH3) - mw_NH3 ;// Mass of water in solution -[lb]
mol1_H2O = m1_H2O/mw_H2O  ;// Moles of H2O in solution -[lb mol]

printf('\n (b)  Moles of H2O in solution is %.1f  lb mol .\n ',mol1_H2O);
printf('     As we can see that moles of water is 2 lb mol , hence we will see H_soln from table corresponding to 2 lb mol water .\n ');
H_soln = -13700 ;// From table given in question in book -[Btu/lb mol NH3]
total_H = abs(NH3*H_soln) ;// Total heat removed from solution -[Btu]
printf('     The amount of cooling needed is, %.0f Btu heat removed.\n ',total_H);