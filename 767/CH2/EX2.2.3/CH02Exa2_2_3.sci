// Scilab code Exa2.2.3 To calculate the energy required to remove a neutron from Kr-81, Kr-82, Kr-83 : Page 68 (2011)
// For Kr-80,  
m_p = 1.007825; // Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
Z = 36; // Number of protons
N_80 = 44;  // Number of neutrons
M_n_80 = 79.91628; // Mass of Kr nucleus
BE_Kr_80 = (Z*m_p+N_80*m_n-M_n_80)*931.49; //  Binding energy for Kr-80, MeV
// For Kr-81,
N_81 = 45; // Number of neutrons
M_n_81 = 80.91661; // Mass of Kr-81 nucleus
BE_Kr_81 = (Z*m_p+N_81*m_n-M_n_81)*931.49; // Binding energy for Kr-81 nucleus
// For Kr-82
N_82 = 46;  // Number of neutrons
M_n_82 = 81.913482; // Mass of Kr nucleus
BE_Kr_82 = (Z*m_p+N_82*m_n-M_n_82)*931.49;  // Binding energy for Kr-82,MeV
// For Kr-83 
N_83 = 47; // Number of protons
M_n_83 = 82.914134; // Mass of Kr-83 nucleus
BE_Kr_83 = (Z*m_p+N_83*m_n-M_n_83)*931.49; // Binding energy for Kr-83, MeV
E_sep_81 = BE_Kr_81-BE_Kr_80; // Energy seperation of neutron for Kr-81, MeV
E_sep_82 = BE_Kr_82-BE_Kr_81; // Energy seperation of neutron for Kr-82, MeV
E_sep_83 = BE_Kr_83-BE_Kr_82; // Energy seperation of neutron for Kr-83, MeV
, 
printf("\nEnergy seperation of neutron for Kr-81 = %4.2f MeV\nEnergy seperation of neutron for Kr-82 = %4.2f MeV\nEnergy seperation of  neutron for Kr-83 = %5.2f MeV", E_sep_81, E_sep_82, E_sep_83);

// Result
// Energy seperation of neutron for Kr-81 = 7.76 MeV
// Energy seperation of neutron for Kr-82 = 10.99 MeV
// Energy seperation of  neutron for Kr-83 =  7.46 MeV