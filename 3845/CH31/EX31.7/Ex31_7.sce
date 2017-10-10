//Example 32.7
Z=2;//Number of protons
N=2;//Number of neutrons
m_He4=4.002603;//Atomic mass of nuclide (u), See Appendix A
m_H1=1.007825;//Atomic mass of a hydrogen atom (u), See Appendix A
m_n=1.008665;//Atomic mass of a neutron (u), See Appendix A
BE={[Z*m_H1+N*m_n]-m_He4}*931.5;//Binding Energy (MeV)
//To get the above equation,start with
//BE=(delta_m*c^2) where,
//delta_m={[Z*m_H1+N*m_n]-m_He4} is the mass defect (u) and c is speed of light (m/s)
//and use the conversion 1u = 931.5MeV/c^2
A=4;//Mass Number
be=BE/A;//Binding energy per nucleon (MeV/nucleon);
printf('Binding energy per nucleon of He-4 = %0.2f MeV/nucleon',be)
//There is a small variation in the value of atomic mass of He-4 used in the textbook and the one found in Appendix A 
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
