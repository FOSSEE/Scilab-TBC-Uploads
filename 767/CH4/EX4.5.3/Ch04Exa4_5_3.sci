// Scilab code Exa4.5.3: To calculate Q-value and threshold energy for the given reaction : Page 183 (2011)
// Pb_208(Fe_56, Fe_54)Pb_210
M_Pb_208 = 207.976641; // Mass of Pb-208, amu
M_Fe_56 = 55.934939; // Mass of Fe-56, amu
M_Pb_210 = 209.984178; // Mass of Pb-210, amu
M_Fe_54 = 53.939612; // Mass of Fe-54, amu
Q = [M_Pb_208+M_Fe_56-M_Pb_210-M_Fe_54]*931.49; // Q-value, MeV
E_th = -Q*(M_Fe_56+M_Pb_208)/M_Pb_208; // Threshold energy, MeV 
printf("\nThe Q-value for the reaction   =  %5.2f MeV \n Threshold energy   = %5.2f MeV ", Q,E_th)
// Result  
//  The Q-value for the reaction   =  -11.37 MeV 
//  Threshold energy   = 14.43 MeV 