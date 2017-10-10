//Chapter-3,Example 16,Page 61
clc;
close;

//Reaction.....U(235) + n(1) ---> Kr(95) + Ba(139) + 2*n(1) + Q

m_U= 235.124     // Isotopic  mass of Uranium in  a.m.u.

m_n= 1.0099     //    mass of neutron in  a.m.u.

m_Kr= 94.945     //  Isotopic  mass of Kripton in  a.m.u.

m_Ba=138.954      //  Isotopic  mass of Ba in  a.m.u.

Q_value= (m_U + m_n - (m_Kr + m_Ba + 2*m_n))*931   // in electron volt   since 1 a.m.u. =931 MeV

//since mass is decreased after reaction
// Q value is positive

printf('the Q value for the reaction is %.3f MeV',Q_value)

//mistake in textbook
