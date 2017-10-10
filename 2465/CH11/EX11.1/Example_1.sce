//Chapter-11,Example 1,Page 275
clc();
close();

M =1000    //mass of alloy

m_Cd= 0.25*M   //25% of Cd in alloy

//since in the eutectic system, 40% is Cd and 60% is Bi

//corresponding to m_Cd  Cd the content of Bi in eutectic is 

m_Bi = m_Cd*60/40

m= m_Cd+m_Bi

printf('the mass of eutectic in 1 kg alloy is %.f gm ',m)
