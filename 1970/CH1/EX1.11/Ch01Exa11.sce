// Scilab code Ex1.11 :  : Page 55 (2011)
clc; clear;
M_n =  1.008665;             // Mass of neutron, amu
M_p = 1.007825;             // Mass of proton, amu
N_Ni = 36;                    // Number of neutron in Ni-64
Z_Ni = 28;                    // Atomic number of Ni-64
N_Cu = 35;                    //  Number of neutron in Cu-64
Z_Cu = 29;                    //  Atomic number of Cu-64
A = 64;                        // Mass number, amu
M_Ni = 63.927958;              // Mass of Ni-64
M_Cu = 63.929759;              // Mass of Cu-64
m_e = 0.511;                   // Mass of an electron, MeV
d_M_Ni = N_Ni*M_n+Z_Ni*M_p-M_Ni;        // Mass defect, amu
d_M_Cu = N_Cu*M_n+Z_Cu*M_p-M_Cu;        // Mass defect, amu
B_E_Ni = d_M_Ni*931.49;                // Binding energy of Ni-64, MeV
B_E_Cu = d_M_Cu*931.49;                // Binding energy of Cu-64, MeV
Av_B_E_Ni = B_E_Ni/A;                //  Average binding energy of Ni-64, MeV
Av_B_E_Cu = B_E_Cu/A;                //  Average binding energy of Cu-64, MeV
printf("\nBinding energy of Ni-64 : %7.3f MeV \nBinding energy of CU-64 : %7.3f MeV  \nAverage binding energy of Ni-64 : %5.3f MeV \nAverage binding energy of Cu-64 : %5.3f MeV ", B_E_Ni, B_E_Cu, Av_B_E_Ni, Av_B_E_Cu);
if (M_Cu - M_Ni)*931.48 > 2*m_e then
    printf("\nNi-64 is not a beta emitter but Cu-64 is a beta emitter");
end

// Result
// Binding energy of Ni-64 : 561.765 MeV 
// Binding energy of CU-64 : 559.305 MeV  
// Average binding energy of Ni-64 : 8.778 MeV 
// Average binding energy of Cu-64 : 8.739 MeV  
// Ni-64 is not a beta emitter but Cu-64 is a beta emitter 
