clear ;
clc;
// Example 25.2
printf('Example 25.2\n\n');
//page no. 767
// Solution 

// Given 
// The main reaction is (1/2)*H2(g) +(1/2)* Cl2(g) --> HCl(g)                                  (A)
// Look in Appendix F for heat of formation of H2 ,Cl2 and HCl
H_H2 = 0 ;// Standard heat of formation of H2 -[kJ/ g mol H2]
H_Cl2 = 0 ;// Standard heat of formation of Cl2 -[kJ/ g mol Cl2]
H_HCl = -92.311 ;//  Standard heat of formation of HCl -[kJ/ g mol HCl]

H_f = 1*H_HCl - (1/2)*(H_H2 + H_Cl2) ; // Standard heat of formation of HCl by reaction - [kJ/ g mol HCl]
printf('Standard heat of formation of HCl(g) is %.3f kJ/g mol HCl.',H_f) ;