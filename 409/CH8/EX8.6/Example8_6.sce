clear ;
clc;
// Example 8.6
printf('Example 8.6\n\n');
// Page no. 209
// Solution

// Composition of initial solution at 30 degree C
s_30 = 38.8 ;//  solublity of Na2CO3 at 30 degree C, by using the table for solublity of Na2CO3-[g Na2CO3/100 g H2O]
If_Na2CO3 =  s_30/(s_30+100) ;// Initial mass fraction of Na2CO3
If_H2O = 1-If_Na2CO3 ;// Initial mass fraction of H2O

// Composition of crystals
// Basis : 1g mol Na2CO3.10H2O
n_mol_Na2CO3 = 1 ;// Number of moles of Na2CO3
n_mol_H2O = 10 ;// Number of moles of H2O
mwt_Na2CO3 = 106 ;// mol. wt of Na2CO3
mwt_H2O = 18 ;// mol. wt of H2O
m_Na2CO3 = mwt_Na2CO3*n_mol_Na2CO3 ;// Mass of Na2CO3
m_H2O = mwt_H2O*n_mol_H2O ;// Mass of H2O
Cf_Na2CO3 =  m_Na2CO3/(m_Na2CO3+m_H2O) ;// mass fraction of Na2CO3 
Cf_H2O = 1-Cf_Na2CO3 ;// mass fraction of H2O

n_un = 9 ;// Number of unknowns in the given problem
n_ie  = 9 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i .\n',d_o_f);

// Final composition of tank
//Basis :I = 10000 kg
// Material balance reduces to Accumulation  =  final -initial = in-out(but in = 0)
I = 10000 ;//initial amount of saturated solution-[kg]
amt_C = 3000 ;// Amount of crystals formed-[kg]
Fm_Na2CO3 = I*If_Na2CO3-amt_C*Cf_Na2CO3 ;// Mass balance of Na2CO3
Fm_H2O = I*If_H2O-amt_C*Cf_H2O ;// Mass balance of H2O

//To find temperature,T
s_T =  (Fm_Na2CO3/Fm_H2O)*100 ;// Solublity of Na2CO3 at temperature T
s_20 = 21.5 ;//Solublity of Na2CO3 at temperature 20 degree C ,from given table-[g Na2CO3/100 g H2O]
// Find T by interpolation
T =  30-((s_30-s_T)/(s_30-s_20))*(30-20) ;// Temperature -[degree C]
printf(' Temperature to which solution has to be cooled to get 3000 kg crystals is %.0f degree C .\n',T);