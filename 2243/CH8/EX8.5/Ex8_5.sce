clc();
clear;
//Given :
Mn = 14.00753; //mass of Nitrogen 14 in u
Mo = 17.0045; // mass of Oxygen 17 in u
m_alpha = 4.00387; // mass of alpha particle in u
mp = 1.00184; // mass of proton in u
//Q = (m_alpha + Mn - Mo - mp)*c^2
//// 1 u * c^2 = 931.5 MeV , where 1 u = 1.66*10^-27 kg and c = 3*10^8 m/s
Q = (m_alpha + Mn - Mo - mp)*931.5 ;// Q value in MeV
printf("Q value is %.1f  MeV",Q);
