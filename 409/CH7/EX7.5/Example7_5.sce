clear ;
clc;
// Example 7.5
printf('Example 7.5\n\n');
//Page no. 182
// Solution

n_un=8 ;// Number of unknowns in the given problem- 8 values of mole fractions
n_ie =6 ;// Number of independent equations- six elemental balances 
d_o_f= n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is %i .\n',d_o_f);
//Note: Experiments show that the change in CH1.8O.5N.16S.0045P.0055 and the change in C(alpha)H(beta)O(gamma) prove to be related by amount of biomass present and the maintenance coefficient(the moles of substrate per mole of biomass per second) so the respective quantities cannot be chosen independently.Consequently with this extra constraint,only one degree of freedom remains to be specified, the basis