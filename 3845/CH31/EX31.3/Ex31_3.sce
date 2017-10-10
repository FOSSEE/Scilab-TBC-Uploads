//Example 31.3
format('v',11)
m_parent=59.933819;//Atomic mass of parent nucleus (Co 60) (u), See Appendix A
m_final=59.930788;//Final atomic mass of product of decay (Ni 60) (u), See Appendix A
delta_m=m_parent-m_final;//Difference in mass (u)
E=delta_m*931.5;//Energy emitted in decay (MeV)
//E=delta_m*c^2, but 1 u=931.5MeV/c^2
printf('Energy emitted in decay = %0.2f MeV',E)
//There is a small variation in the values used in the textbook and the ones found in Appendix A
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

