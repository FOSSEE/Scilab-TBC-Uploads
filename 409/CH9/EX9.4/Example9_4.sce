clear ;
clc;
// Example 9.4
printf('Example 9.4\n\n');
// Page no. 235
// Solution

f_NH3 = 5 ;// NH3 in feed-[g]
f_N2 =  100 ;// N2 in feed-[g]
f_H2 =  50 ;// H2 in feed-[g]
p_NH3 = 90 ;// NH3 in product-[g]
m_NH3  = 17 ;// Molecular wt. of NH3-[g]
m_N2  = 28 ;// Molecular wt. of N2-[g]
m_H2  = 2 ;// Molecular wt. of H2-[g]

// Extent of reaction can be calculated by using eqn. 9.3 
// For NH3
ni = p_NH3/m_NH3 ;//[g mol NH3]
nio = f_NH3/m_NH3 ;//[g mol NH3]
vi = 2 ;// coefficint of NH3
ex_r =  (ni-nio)/vi ;// Extent of reaction - moles reacting

//Determine H2 and N2 in product of reaction by Eqn. 9.4
// For N2
nio_N2 = f_N2/m_N2 ;//[g mol N2]
vi_N2 = -1 ;// coefficint of N2
ni_N2 = nio_N2 + vi_N2*ex_r ;//N2 in product of reaction-[g moles ]
m_N2 = ni_N2*m_N2 ;// mass of N2 in product of reaction-[g]
printf('  N2 in product of reaction is  %.2f g moles  \n',ni_N2);
printf('   Mass of N2 in product of reaction is  %.2f g   \n',m_N2);
// For H2
nio_H2 = f_H2/m_H2 ;//[g mol H2]
vi_H2 = -3 ;// coefficint of H2
ni_H2 = nio_H2 + vi_H2*ex_r ;//H2 in product of reaction-[g moles ]
m_H2 = ni_H2*m_H2 ;// mass of H2 in product of reaction-[g]
printf(' \n  H2 in product of reaction is  %.2f g moles  \n',ni_H2);
printf('  Mass of H2 in product of reaction is  %.2f g   \n',m_H2);

// ARP
m_SO2 = 64 ;// Molecular wt.of SO2-[g]
mol_SO2 =  2 ;// moles of SO2
ARP = (1/m_NH3)/(mol_SO2/m_SO2);
printf(' \n ARP is  %.2f    \n',ARP);