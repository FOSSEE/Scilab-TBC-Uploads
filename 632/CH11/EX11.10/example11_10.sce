//clc()
//Cp = 26.54 + 42.454*10^-3 * T - 14.298 * 10^-6 * T^2;
T1 = 300;//K
T2 = 1000;//K
m = 1;//kg
N = m/44;//kmol
x = integrate('26.54 + 42.454*10^-3 * T - 14.298 * 10^-6 * T^2','T',T1,T2);
Q = N*x;
disp("kJ",Q,"(a)Heat required = ")
//for temperature in t degree celsius
//Cp = 26.54 + 42.454*10^-3 * (t + 273.15) - 14.298 * 10^-6 * (t + 273.15)^2
//Cp = 37.068 + 34.643 * 10^-3*t - 14.298* 10^-6 * t^2 (kJ/kmolC)
//Cp = 8.854 + 8.274*10^-3*t -3.415*10^-6*t^2 ( Kcal/kmolC)
//For degree Fehreneit scale,replacet by ( t1 - 32)/18, we get
//Cp = 8.7058 + 4.6642 * 10^-3 *t1 - 1.0540 * 10^-6 * t1^2 ( Btu/lbmolF)