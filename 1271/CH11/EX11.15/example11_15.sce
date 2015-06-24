clc 
// Given that
E = 0.1 // kinetic speed of electron in Mev
// Sample Problem 15 on page no. 11.23
printf("\n # PROBLEM 15 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n KE = (m-m_0)*c^2  \n KE = 1/2*m*v^2 \n")
v_ = sqrt(2 * (E * 1.6e-13) / 9.1e-31)
v = 3e8 * sqrt(1 - (1 / (1 + (1.6e-13 * E) / (9.1e-31 * 3e8^2)))^2)
printf("\n Speed according to classical mechanics is %e meter/sec.\n Speed according to relativistic mechanics is %e meter/sec.",v_,v)
