// Scilab code Exa16.4 : : Page-673 (2011)
clc; clear;
A = 80*10^6;        // Activity, becquerel
t_half = 6*3600;    // Half life, s
N = A*t_half/0.693;    // Number of surviving radionuclei
E_released = 0.9*N*(140e+03)*1.6e-19;    // Energy released, joule
m_l = 1.8;                    // Mass of liver of average man, Kg
liv_dose = E_released*10^2/m_l;    // Liver dose, centigray
printf("\nThe requiresd liver dose = %3.1f cGy", liv_dose);

// Result
// The requiresd liver dose = 2.8 cGy 
