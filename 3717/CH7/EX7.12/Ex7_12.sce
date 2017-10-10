// Ex7_12 Page:141 (2014)
clc;clear;
E_K_alpha = 21.99;    // The energy in silver for K_alpha X-ray, keV
E_K_beta = 25.145;    // The energy in silver for K_beta X-ray, keV
EB_K = 25.514;    // The binding energy of K electron in silver, keV
E_L_alpha = E_K_beta - E_K_alpha;    // The energy in silver for L_alpha X-ray, keV
EB_L = -EB_K + E_K_alpha;    // The binding energy of L electron in silver, keV
printf("\nThe energy of the L_alpha X-ray = %5.3f keV", E_L_alpha);
printf("\nThe binding energy of the L electron = %5.3f keV", EB_L);

// Result
// The energy of the L_alpha X-ray = 3.155 keV
// The binding energy of the L electron = -3.524 keV 