clear ;
clc;

// Example 2.1
printf('Example 2.1\n\n');
//Page no. 45
// Solution

// Count the number of each element from fig. E2.1.
// Look for the atomic weights of elements from Appendix B
// Assume the one cell is a molecule
n_Ba = 2 ;// Number of atoms of Ba
n_Cu = 16 ;// Number of atoms of Cu
n_O = 24 ;// Number of atoms of O
n_Y = 1 ;// Number of atoms of Y
m_Ba = 137.34 ;//Atomic wt. -[g]
m_Cu = 63.546 ;//Atomic wt.-[g]
m_O = 16.00 ;//Atomic wt.-[g]
m_Y = 88.905; //Atomic wt.-[g]
mol_wt =  n_Ba*m_Ba + n_Cu*m_Cu + n_O*m_O + n_Y*m_Y ;//The molecular weight of given material-[g]

printf('The molecular weight of given material is %1.1f g/g mol.\n',mol_wt);