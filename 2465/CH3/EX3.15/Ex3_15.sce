//Chapter-3,Example 15,Page 61
clc;
close;

//Reaction.....Li(7) + D(2) ---> He(4) + He(4) + Q

m_Li= 6.01702     // Isotopic  mass of Lithium in  a.m.u.

m_D= 2.01474     //  Isotopic  mass of D in  a.m.u.

m_He= 4.00387     //  Isotopic  mass of Helium in  a.m.u.

Q_value= (m_Li + m_D - 2*m_He)*931   // in electron volt   since 1 a.m.u. =931 MeV

//since mass is decreased after reaction
// Q value is positive

printf('the Q value for the reaction is %.2f MeV',Q_value)

//mistake in textbook
