clear;
clc;
// Example 23.6
printf('Example 23.6\n\n');
//page no. 700 
// Solution 

//Given
N2 = 1 ;// Moles of N2 - [kg mol]
P = 100 ;// Pressure of gas - [kPa] 
T1 = 18 ;// Initial temperature - [degree C]
T2 = 1100  ;// Final temperature - [degree C]

// In the book it is mentioned to use tables in Appendix D6 to calculate enthalpy change, we get 
H_T1 = 0.524;// Initial enthalpy -[kJ/kg mol]
H_T2 = 34.715   ;// Final enthalpy - [kJ/kg mol]
del_H =  H_T2 - H_T1 ;// Change in enthalpy - [kJ/kg]

printf('\n Change in enthalpy of N2 over given range is %.3f kJ/kg mol N2 .\n ',del_H);