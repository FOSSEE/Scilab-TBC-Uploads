// Scilab code Exa4.8.6: To calculate the mass defect and Q-value for the fusion reactions : Page 197 (2011)
//  Reaction-1 = H(1,2)+H(1,2)= He(2,3)+n(0,1)
m_p = 1.007825; // Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
m_H = 2.014102; // Mass of H(1,2), amu
m_He = 3.016029; // Mass of He(2,3), amu
m_d_1 = 2*m_H-m_He-m_n; // Mass defect for reaction first, amu
Q_1 = m_d_1*931.47; // Q-value for reaction first, MeV
// Reaction-2 = H(1,2)+H(1,2)= H(1,3)+p(1,1)
m_p = 1.007825; // Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
m_H = 2.014102; // Mass of H(1,2), amu
m_H_3 = 3.016049; // Mass of H(1,3), amu
m_d_2 = 2*m_H-m_H_3-m_p; // Mass defect for reaction second, amu
Q_2 = m_d_2*931.47; // Q-value for reaction second, MeV
printf("\nFor first reaction \n Mass defect    = %7.5f amu \n Q-value    =   %7.5f amu   \nFor second reaction \n Mass defect   =  %7.5f MeV \n Q-value    = %4.2f MeV ", m_d_1,Q_1, m_d_2,  Q_2)
// Result  
//   For first reaction 
//  Mass defect    = 0.00351 amu 
//  Q-value    =   3.26946 amu   
// For second reaction 
//  Mass defect   =  0.00433 MeV 
//  Q-value    = 4.03 MeV  
