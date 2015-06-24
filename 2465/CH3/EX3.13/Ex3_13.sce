//Chapter-3,Example 13,Page 60
clc;
close;

//Reaction.....N(14) + He(4) ---> O(17) +H(1)

m_r= 18.01140     // total mass of reactants in  a.m.u.

m_p= 18.01264     // total mass of product in a.m.u.

m= m_p -m_r    // increase in mass

Q_value= m*931   // in electron volt   since 1 a.m.u. =931 MeV

//since mass is increased after reaction
// Q value is negative

printf('the Q value for the reaction is %.2f MeV',-Q_value)

