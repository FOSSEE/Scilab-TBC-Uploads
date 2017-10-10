clc
Hr1 = -249952 // For octane
Hp1 = Hr1
// Below values are calculated using value from table 
T2 = 1000  // Assumed reaction temperature in K
Hp2 = -1226577 // Enthalpy of reaction products
T3 = 1200  // Assumed reaction temperature in K
Hp3 = 46537// Enthalpy of reaction products
T4 = 1100// Assumed reaction temperature in K
Hp4 = -595964 // Enthalpy of reaction products
Hp = [Hp2 Hp3 Hp4]
T = [T2 T3 T4]
T1 = interpln([Hp;  T],Hp1) // Interpolation to find temperature at Hp1
printf("\n Example 16.10 \n")
printf("\n The adiabatic flame temperature is %f K",T1)
//The answer provided in the textbook is wrong

