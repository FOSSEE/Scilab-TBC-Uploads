clear ;
clc;
// Example 10.2
printf('Example 10.2\n\n');
// Page no. 266
// Solution

S = 5000 ;// Sulphur [lb]
// Composition of feed
CH4 =  80 ;// [%]
H2S =  20 ;// [%]

n_un = 11 ;// Number of unknowns in the given problem
n_ie  = 11 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i \n',d_o_f);
m_S = 32.0 ;//molecular wt. of S -[lb]
mol_S = S/32.0;
// Extent of reaction can be calculated by using eqn. 9.3 
// Based on S
nio_S = 0 ;//[g mol S]
ni_S = mol_S ;//[g mol S]
vi_S = 3 ;// coefficint of S -from given reaction
ex_r = (ni_S-nio_S)/vi_S ;//  Extent of reaction based on S
printf(' Extent of reaction is %.1f g moles reacting \n',ex_r);

// Product composition 
vi_H2O = 2 ;// coefficint of H2O
vi_H2S = -2 ;// coefficint of H2S
vi_SO2 = -1 ;//coefficint of SO2
vi_CH4 = 0 ;//coefficint of CH4
P_H2O = 0+(vi_H2O*ex_r);// [lb mol]
P_H2S = P_H2O/10 ;//[lb mol]
P_SO2 = 3*P_H2S ;//[lb mol]

F = (P_H2S-vi_H2S*ex_r)/(H2S/100) ;// total feed-[lb mol]
F_SO2 = P_SO2-(vi_SO2*ex_r);// feed rate of SO2- [lb mol]
F_CH4 = (CH4/100)*F+vi_CH4*ex_r ;//feed rate of CH4- [lb mol]
F_H2S = ((H2S/100)*F) ;// feed rate of H2S-[lb mol]

// We can see from situation that H2S is limiting reagent as ratio of SO2 to H2S in the product gas(3/1) is greater than their molar ratio in chemical reaction(2/1)
f_cn = -(vi_H2S*ex_r)/((H2S/100)*F) ;// Fractional conversion of limiting reagent

printf('\n(1)Feed rate of H2S-  %.1f lb mol\n',F_H2S);
printf('(2)Feed rate of SO2-  %.1f lb mol\n',F_SO2);
printf('(3)Fractional conversion of limiting reagent-  %.2f \n',f_cn);