// Grob's Basic Electronics 11e
// Chapter No. I
// Example No. I_8
clc; clear;
// Make the following conversions: (a) convert 25 mA to uA (b) convert 2700 kOhms to MOhms.

disp ('To convert 25 mA to uA, recall that the metric prefix milli (m) corresponds to 10^3 and that metric prefix micro (u) corresponds to 10^6. Since 10^6 is less than 10^3 by a factor of 1000 (10^3), the numerical part of the expression must be increased by a factor of 1000 (10^3).') 
disp ('Therefore, 25 mA = 25*10^-3 A = 25,000*10^-6 A = 25,000 uA.')

disp ('To convert 2700 kOhms to MOhms, recall that the metric prefix kilo (k) corresponds to 10^3 and that the metric prefix mega (M) corresponds to 10^6. Since 10^6 is larger than 10^3 by a factor of 1000 (10^3), the numerical part of the expression must be decreased by a factor of 1000 (10^3).')
disp ('2700 kOhms = 2700*10^3 Ohms = 2.7*10^6 Ohms = 2.7 MOhms.')
