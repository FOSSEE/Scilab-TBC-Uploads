clc
Pa = 130 // Pressure at station A in kPa
Pb = 100// Pressure at station B in kPa
Ta = 50 // Temperature at station A in degree Celsius
Tb = 13// Temperature at station B in degree Celsius
cp = 1.005  // Specific heat capacity of air in kJ/kgK

printf("\n Example 7.8")
Ss = integrate('cp/T','T',Ta,Tb)-integrate('0.287/p','p',Pa,Pb) 
Ssur = 0 
Su = Ss+Ssur
printf("\n Change in the entropy of the universe is %f kJ/Kg K",Su)
//The answers given in the book is wrong
printf("\n As the change in entropy of the universe in the process A-B is negative \n so the flow must be from B-A")

