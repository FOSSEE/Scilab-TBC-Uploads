//clc()
//Cp = 7.13 + 0.577 * (10^-3) * t + 0.0248 * (10^-6) * t^2 
//Cp - Btu/lb-mol F, t - F
//Cp1 - kJ/kmol K , t1 - K
a = 7.13;
b = 0.577 * 10^-3;
c = 0.0248 * 10^-6;
//t = 1.8 * t1 - 459.67
Cp = 4.1868;//Cp1 (Btu/lb-mol F = 4.1868 * (kJ/kmol K) )
//substituting the above, we get,
//Cp1 = 28.763 + 4.763 * (10^-3) * t1 + 0.3366 * (10^-6) * t^2
a1 = 28.763;
b1 = 4.763 * (10^-3);
c1 = 0.3366 * (10^-6);
disp(a1,"a1 = ")
disp(b1,"b1 = ")
disp(c1,"c1 = ")
// this are the co efficents for the following equation;
// Cp1 = a1 + b1 * t1 + c1 * (t1)^2
