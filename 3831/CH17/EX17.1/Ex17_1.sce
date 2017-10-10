// Example 17_1
clc;funcprot(0);
// Given data
T=37.0;// °C
// From table 17.2
c_Na_c=14.0;// osmoles/cm^3
c_Na_o=144;// osmoles/cm^3
c_K_c=140;// osmoles/cm^3
c_K_o=4.1;// osmoles/cm^3
c_Cl_c=4.00;// osmoles/cm^3
c_Cl_o=107;// osmoles/cm^3

// Solution
E_Na=(26.7/1)*log(c_Na_o/c_Na_c);// mV
E_K=(26.7/1)*log(c_K_o/c_K_c);// mV
E_Cl=(26.7/-1)*log(c_Cl_o/c_Cl_c);// mV
printf("\nThe membrane potential of sodium in a human cell,E_Na+=%2.1f mV \nThe membrane potential of potassium in a human cell,E_K+=%2.1f mV \nThe membrane potential of chlorine in a human cell,E_Cl-=%2.1f mV",E_Na,E_K,E_Cl);
