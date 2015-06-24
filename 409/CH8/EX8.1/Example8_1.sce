clear ;
clc;
// Example 8.1
printf('Example 8.1\n\n');
//Page no. 197
// Solution

// Basis : 1 min
d_w =  1.0 ;// Density of aqueous solution-[g/cubic metre]
d_sol =  0.6 ;// Density of organic solvent-[g/cubic metre]

n_un = 8 ;// Number of unknowns in the given problem
n_ie  = 8 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i .\n',d_o_f);

// Material balance of Strep.
x =  (200*10+10*0-200*0.2)/10;//[g]
printf('Strep per litre of solvent is  %.1f g .\n',x);

cnc = x/(1000*d_sol) ;//[g Strep/g of S]
printf('Strep per gram of solvent is  %.4f g Strep/g of S .\n',cnc);

m_fr = cnc/(1+cnc) ;//Mass fraction
printf('Mass fraction of Strep is  %.3f g .\n',m_fr);