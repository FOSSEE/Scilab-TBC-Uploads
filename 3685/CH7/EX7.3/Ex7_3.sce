clc
// Part (a)
m = 1 // Mass of ice in kg
T1 = -5 // Initial temperature of ice in degree Celsius
T2 = 20// Atmospheric temperature in degree Celsius
T0 = 0// Phase change temperature of ice in degree Celsius
cp = 2.093 // Specific heat capacity of ice in kJ/kgK
cv = 4.187 // Specific heat capacity of water in kJ/kgK
lf = 333.3 // Latent heat of fusion in kJ/kgK

printf("\n Example 7.3")
Q = m*cp*(T0-T1)+1*333.3+m*cv*(T2-T0) // Net heat transfer
Sa = -Q/(T2+273) // Entropy change of surrounding
Ss1 = m*cp*log((T0+273)/(T1+273)) // entropy change during 
Ss2 = lf/(T0+273) // Entropy change during phase change
Ss3 = m*cv*log((T2+273)/(T0+273)) // entropy change of water
St = Ss1+Ss2+Ss3 // total entropy change of ice to convert into water at atmospheric temperature
Su = St+Sa // Net entropy change of universe
printf("\n The entropy change of the universe is %f kJ/K",Su)

//The answer provided in the textbook is wrong
// Part (b)
S = St  // Entropy change of system
Wmin = (T2+273)*(S)-Q // minimum work required
printf("\n The minimum work required is %f kJ",Wmin)
//The answers vary due to round off error

