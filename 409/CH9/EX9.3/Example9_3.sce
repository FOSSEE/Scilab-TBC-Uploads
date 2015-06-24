clear ;
clc;
// Example 9.3
printf('Example 9.3\n\n');
// Page no. 230
// Solution

m_CaCO3 = 100.1 ;//molecular wt-[g]
m_MgCO3 = 84.32 ;//molecular wt-[g]
m_CaO = 56.08 ;//molecular wt-[g]
m_MgO = 40.32 ;//molecular wt-[g]
m_CO2 = 44.0 ;//molecular wt-[g]


// Limestone analysis
p_CaCO3 = 92.89 ;// percentage of CaCO3
p_MgCO3 = 5.41 ;//  percentage of MgCO3 
inrt = 1.7 ;//percentage of inert

//(a)
amt_CaO  = (((p_CaCO3/100)*m_CaO)/m_CaCO3)*2000 ;//Pounds of CaO produced from 1 ton(2000lb) of limestone
printf(' Amount of CaO produced from 1 ton(2000lb) of limestone is  %.0f lb.\n',amt_CaO);

//(b)
mol_CaCO3 = (p_CaCO3/100)/m_CaCO3 ;// lb mol of CaCO3
mol_MgCO3 = (p_MgCO3/100)/m_MgCO3 ;// lb mol of MgCO3
total_mol = mol_CaCO3+mol_MgCO3;
amt_CO2 = total_mol*m_CO2 ;// Amount of CO2 recovered per pound of limestone-[lb]
printf('  Amount of CO2 recovered per pound of limestone is  %.3f lb.\n',amt_CO2);

//(c)
amt_CaO = m_CaO*mol_CaCO3 ;// since lb mol of CaO  =  CaCO3
amt_MgO = m_MgO*mol_MgCO3 ;// since lb mol of MgO  =  MgCO3
total_lime =  amt_CaO+amt_MgO+(inrt)/100 ;// total amount of lime per pound limestone
amt_lmst = 2000/total_lime ;// Amount of limestone required to make 1 ton(2000lb) of lime 
printf('  Amount of limestone required to make 1 ton(2000lb) of lime   %.1f lb.\n',amt_lmst);