clear ;
clc;
// Example 25.1
printf('Example 25.1\n\n');
//page no. 766
// Solution Fig. E25.1

// Given 
// C(s) + O2(g) -->  CO2(g)                                  (A)
// CO(g) + (1/2)(O2)(g) -->  CO2 (g)                    (B)
Qa = -393.51 ;// Heat of reaction of reaction (a) - [kJ/g mol C] 
Qb = -282.99 ;// Heat of reaction of reaction (b) - [kJ/g mol CO] 
del_Ha = Qa ;// Change in enthalpy of reaction A - [kJ/g mol C]
del_Hb = Qb ;// Change in enthalpy of reaction B - [kJ/g mol CO]

// According to Hess's Law , subtract reaction (B) from reaction (A) , subtract corresponding del_H's to get enthalpy of formation of reaction (C)-    C(s) + (1/2)*O2 --> CO(g) , therefore 
del_Hfc = del_Ha - del_Hb ;// Standard heat of formation of CO - [kJ/g mol C]
printf('Standard heat of formation of CO is %.2f kJ/g mol C.',del_Hfc) ;