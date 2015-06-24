clc();
clear;
//Given :
m_alpha = 4.001506106; // mass of an alpha particle in u
mp = 1.007276470 ; // proton mass in u 
mn = 1.008665012; // neutron mass in u
//E = ( 2*mp + 2*mn - m_alpha)*c^2
// 1 u * c^2 = 931.5 MeV , where 1 u = 1.66*10^-27 kg and c = 3*10^8 m/s
E = (2*mp + 2*mn - m_alpha)*931.5; // Binding energy in MeV
printf("Average binding energy per nucleon : %.3f MeV",E/4);
