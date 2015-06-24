// Scilab code Ex17.8 : Pg:892 (2011)
clc;clear;
amu = 931.5;    // Energy equivalent of 1 amu, MeV
nucleus = cell(4,3);
nucleus(1,1).entries = 'F';
nucleus(1,2).entries = 9;
nucleus(1,3).entries = 19;
M_P = 19.0457;    // Mass of product nucleus, amu
nucleus(2,1).entries = 'n';
nucleus(2,2).entries = 0;
nucleus(2,3).entries = 1;
m_i = 1.0087;    // Mass of incident particle, amu
nucleus(3,1).entries = 'O';
nucleus(3,2).entries = 8;
nucleus(3,3).entries = 19;
nucleus(4,1).entries = 'H';
nucleus(4,2).entries = 1;
nucleus(4,3).entries = 1;
m_e = 1.00728;    // Mass of emitted particle, amu
K_i = 15;    // Kinetic energy of incident neutrons, MeV
Q = -7.6342;    // Q-value of the reaction, MeV
K_e = (Q*M_P-(m_i-M_P)*K_i)/(m_e+M_P);    // Kinetic energy of emitted photon, MeV
E_th = -1*Q*(M_P+m_i)/M_P;    // Threshold energy required to initiate the reaction, MeV
printf("\nThe kinetic energy of emitted photon = %5.3f MeV", K_e);
printf("\nThe threshold energy required to initiate the reaction");
printf("\n\t%s(%d,%d) + %s(%d,%d) --> %s(%d,%d) + %s(%d,%d)", nucleus(1,1).entries, nucleus(1,2).entries, nucleus(1,3).entries, nucleus(2,1).entries, nucleus(2,2).entries, nucleus(2,3).entries, nucleus(3,1).entries, nucleus(3,2).entries, nucleus(3,3).entries, nucleus(4,1).entries, nucleus(4,2).entries, nucleus(4,3).entries);
printf("\nis %5.3f MeV", E_th);

// Result
// The kinetic energy of emitted photon = 6.241 MeV
// The threshold energy required to initiate the reaction
// 	F(9,19) + n(0,1) --> O(8,19) + H(1,1)
// is 8.039 MeV
