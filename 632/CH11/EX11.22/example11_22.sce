//clc()
//Cp = a + b*T
T1 = 293.15;//K
Cp1 = 131.05;//J/molK
T2 = 323;//K
Cp2 = 138.04;//J/molK
//a + 293*b = 131.05
//a + 323*b = 138.04
b = (Cp1 - Cp2)/(T1 - T2);
a = Cp1 - b * T1;
//Cp = 62.781 + 0.233*T
// Hvb / Tb = 36.63 + 8.31lnTb
Tb = 273.15 + 80.1;//K
Hvb = (36.63 + 8.31*log(Tb)) * Tb;
m = 100;//kg
H = m*(10^3) * (integrate('62.781 + 0.233*T','T',T1,Tb))/78.048 + m*(10^3)*Hvb/78.048;
disp("J",H,"Heat required = ")