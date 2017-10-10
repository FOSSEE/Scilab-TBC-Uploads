//Chapter-3,Example 17,Page 61
clc;
close;

m_Ca = 39.975   //atomic mass of Calcium in a.m.u.

a_no= 20  //atomic number of calcium

m_proton = 1.0078  //mass of proton

m_neutron = 1.0086    //mass of neutron\

delta_m=a_no*(m_neutron + m_proton)- m_Ca  //mass defect

energy= delta_m*931/40   //binding energy per nucleon

printf('binding energy per nucleon is %.3f MeV',energy)

