clear ;
clc;

// Example 3.1
printf('Example 3.1\n\n');
//Page no. 79
// Solution

// Let component 1 be Ce and component 2 be O
// Basis 2kg mol CeO
mol1 = 1.0 ;//[kg mol]
mol2 = 1.0 ;//[kg mol]
total = mol1+mol2 ;//[kg mol] 
mol_fr1 = mol1/total ;//mole fraction of Ce
mol_fr2 = mol2/total ;//mole fraction of O
mw1 = 140.12; //molecular weight of Ce
mw2 = 16.0  ;//molecular weight of O
m1 = mw1*mol1;
m2 = mw2*mol2;
m_fr1 = m1/(m1+m2) ;//mass fraction of Ce
m_fr2 = m2/(m1+m2) ;//mass fraction of O

printf('Component     kg mol       Mole fraction    Mol.Wt.     kg.          Mass fraction\n')
printf('\n Ce            %.2f         %.3f            %.2f      %.3f      %.2f\n',mol1,mol_fr1,mw1,m1,m_fr1);
printf(' O             %.2f         %.3f            %.2f       %.3f       %.2f\n',mol2,mol_fr2,mw2,m2,m_fr2);
printf(' Total         %.2f         %.3f            %.2f      %.3f      %.2f',mol1+mol2,mol_fr1+mol_fr2,mw1+mw2,m1+m2,m_fr1+m_fr2);