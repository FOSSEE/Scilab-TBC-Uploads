clear ;
clc;

// Example 2.6
printf('Example 2.6\n\n');
//Page no.57
// Solution

// Let component 1 be water and component 2 be NaOH
// Basis 10 kg total solution
m1 = 5.0 ;//[kg]
m2 = 5.0; //[kg]
total = m1  + m2 ;//[kg] 
m_fr1 = m1/total ;//mass fraction of water
m_fr2 = m2/total ;//mass fraction of NaOH
mw1 = 18.0 ;//molecular weight of water
mw2 = 40.0 ;//molecular weight of NaOH
mol1 = m1/mw1;
mol2 = m2/mw2;
mol_fr1 = mol1/(mol1  + mol2) ;//mol fraction of water
mol_fr2 = mol2/(mol1  + mol2) ;//mol fraction of NaOH
printf(' Component    kg        Mass fraction    Mol.Wt.    kg mol    Mole fraction\n');
printf('n Water        %.2f      %.3f            %.1f       %.3f      %.2f\n',m1,m_fr1,mw1,mol1,mol_fr1);
printf(' NaOH         %.2f      %.3f            %.1f       %.3f      %.2f\n',m2,m_fr2,mw2,mol2,mol_fr2);
printf(' Total        %.2f     %.3f                       %.3f      %.2f',m1  + m2,m_fr1  + m_fr2,mol1  + mol2,mol_fr1  + mol_fr2);