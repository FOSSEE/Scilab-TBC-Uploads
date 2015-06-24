// Scilab code Ex9.9 Page:286 (2006)
clc; clear;
M_1 = 202;    // Mass of first isotope of mercury, amu
M_2 = 199;    // Mass of second isotope of mercury, amu
T_c1 = 4.153;    // Transition temperature of first isotope of mercury, K 
//As T_c1/T_c2 = (M_2/M_1)^1/2, solving for T_c2
T_c2 = sqrt(M_1/M_2)*T_c1;  // 
printf("\nThe transition temperature of isotope of Hg whose mass number is %d = %5.3f K", M_2, T_c2);

// Result 
// The transition temperature of isotope of Hg whose mass number is 199 = 4.184 K 
