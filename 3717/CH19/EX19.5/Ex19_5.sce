// Ex19_5 Page:378 (2014)
clc;clear;
m_D = 1.66e-027;    // Mass of the deutrium, kg
m_1H2 = 2.014102;    // Mass of deutrium, u
m_1H3 = 3.01609;    // Mass of the tritium, u
m_1H1 = 1.007825;    // Mass of protium, u
Q = (2*m_1H2 - m_1H3 - m_1H1)*931.5;    // Energy released per fusion, MeV
E = 0.001/(2*m_D)*Q/2;    // Energy released per gram of fuel, MeV
printf("\nThe energy released per gram of fuel = %4.2e MeV", E);

// Result
// The energy released per gram of fuel = 6.02e+023 MeV 
// The answer provided in the textbook is wrong