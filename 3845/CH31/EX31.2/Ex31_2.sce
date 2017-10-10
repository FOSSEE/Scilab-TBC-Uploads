//Example 31.2
m_parent=239.052157;//Atomic mass of parent nucleus (Pu 239)(u), See Appendix A
m_final=235.043924+4.002603;//Final atomic mass of products of decay (U 235 and He 4)(u), See Appendix A
delta_m=m_parent-m_final;//Difference in mass (u)
E=delta_m*931.5;//Energy emitted in decay (MeV)
//E=delta_m*c^2, but 1 u=931.5MeV/c^2
printf('Energy emitted in decay = %0.2f MeV',E)
//Answer varies due to the difference in value of atomic mass of He-4 found in Appendix A and the value used in textbook
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

