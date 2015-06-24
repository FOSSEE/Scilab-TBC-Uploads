clear ;
clc;
// Example 9.5
printf('Example 9.5\n\n');
// Page no. 238
// Solution

f_N2 = 10 ;// N2 in feed-[g]
f_H2 = 10 ;// H2 in feed-[g]
m_NH3 = 17.02;// Molecular wt. of NH3-[g]
m_N2 = 28 ;// Molecular wt. of N2-[g]
m_H2 = 2 ;// Molecular wt. of H2-[g]

// Extent of reaction can be calculated by using eqn. 9.3 
// Based on N2
nio_N2 = f_N2/m_N2 ;//[g mol N2]
vi_N2 = -1 ;// coefficint of N2
ex_N2 = -(nio_N2)/vi_N2 ;// Max. extent of reaction based on N2

// Based on H2
nio_H2 = f_H2/m_H2 ;//[g mol H2]
vi_H2 = -3 ;// coefficint of H2
ex_H2 = -(nio_H2)/vi_H2 ;// Max. extent of reaction based on H2

//(a)
vi_NH3 = 2 ;// coefficint of NH3
mx_NH3 = ex_N2*vi_NH3*m_NH3 ;// Max. amount of NH3 that can be produced
printf(' (a) Max. amount of NH3 that can be produced is %.1f g\n',mx_NH3);

//(b) and (c)
if (ex_H2 > ex_N2 )
 printf('  (b) N2 is limiting reactant  \n');
 printf('  (c) H2 is excess reactant  \n');
 ex_r = ex_N2;
  else
printf('  (b) H2 is limiting reactant  \n');
 printf('  (c) N2 is excess reactant  \n');
 ex_r = ex_H2 ;
 end