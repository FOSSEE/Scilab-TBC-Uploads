clear;
clc;

// Illustration 7.3
// Page: 226

printf('Illustration 7.3 - Page: 226\n\n');

// solution

// ****Data****//
m = 10;// [kg]
Cvap = 1.256;// [kJ/kg.K]
Cliq = 1.507;// [kJ/kg.K]
Temp1 = 100;// [OC]
Temp4 = 10;// [OC]
//******//

// Using Fig 7.2 (Pg 224):
Temp2 = 25;// [OC]
// Using the notation of Fig. 7.3:
H1_diff_H2 = Cvap*(Temp1-Temp2);// [kJ/kg]
// From Illustration 7.2:
H2_diff_H3 = 434;// [Latent Heat of Vaporisation, kJ/kg]
H3_diff_H4 = Cliq*(Temp2-Temp4);// [kJ/kg]
H1_diff_H4 = H1_diff_H2+H2_diff_H3+H3_diff_H4;// [kJ/kg]
H = m*H1_diff_H4;// [kJ]
printf("Heat evolved for 10 kg Benzene is %f kJ\n",H);