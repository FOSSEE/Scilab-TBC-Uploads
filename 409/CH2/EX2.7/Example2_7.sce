clear ;
clc;

// Example 2.7
printf('Example 2.7\n\n');
//Page no.58
// Solution

// Basis 500 L solution containing 35g/L
// (NH4)2SO4 is the only nitrogen source
cn = 35 ;//[g/L]
wt = 9  ;//[wt % N]
m_wt1 = 132 ;//[g]
m_wt2 = 14 ;//[g]
amt = (500*(35)*.09*1*1*m_wt1)/(1*m_wt2*1*1);
printf('Total amount of (NH4)2SO4 consumed  is  %.1f g.',amt);