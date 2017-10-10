//Chapter-11,Example 2,Page 275
clc();
close();

M =1000    //mass of alloy

m_A= 0.4*M   //40% of A in alloy

m_B= 0.6*M   //60% of B in alloy

//since in the eutectic system, 40% is B and 60% is A

//corresponding to m_A  the content of m_B in eutectic is 

m_Be = m_A*40/60   //in eutectic 

m= m_B-m_Be  //amount of B separated out

printf('the amount of B separated out is %.2f gm ',m)
