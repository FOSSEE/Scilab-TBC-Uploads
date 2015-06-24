// Scilab code Ex4.1: Pg 109 (2005)
clc; clear;
I = 10;    // Electric current, A
t = 3600;    // Time, s
q = I*t;   // Electric charge liberated, C
mm_Ba = 137;    // Molar mass of Barium, g
mm_Cl = 35.5;    // Molar mass of Chlorine, g
valence_Ba = 2;    // Valence electrons of Barium
valence_Cl = 1;      // Valence electrons of Chlorine
// Using Faraday’s law of electrolysis, we have
m_Ba = (q*mm_Ba)/(96500*valence_Ba);     // Mass of Barium obtained, g
m_Cl = (q*mm_Cl)/(96500*valence_Cl);     // Mass of Chlorine obtained, g
printf("\nMass of Barium obtained = %4.1f g", m_Ba);
printf("\nMass of Chlorine obtained = %4.1f g", m_Cl);

// Result
// Mass of Barium obtained = 25.6 g
// Mass of Chlorine obtained = 13.2 g
