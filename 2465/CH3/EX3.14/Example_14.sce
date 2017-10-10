//Chapter-3,Example 14,Page 61
clc;
close;

//Reaction.....Li(7) + H(1) ---> He(4) +He(4)

m_r= 8.02636     // total mass of reactants in  a.m.u.

m_p= 8.00774     // total mass of product in a.m.u.

m= m_r -m_p    // increase in mass

Q_value= m*931   // in electron volt   since 1 a.m.u. =931 MeV

//since mass is decreased after reaction
// Q value is positive

printf('the Q value for the reaction is %.2f MeV',Q_value)

