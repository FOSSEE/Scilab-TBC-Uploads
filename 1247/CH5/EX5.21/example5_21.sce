clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.21
// Page 248
printf("Example 5.21, Page 248 \n \n");

// solution

// enthalpy at Tbb
Tbb = 321.6
T1 = 298.15
H1 = 65.4961*(Tbb-T1)+628.628*10^-3*(Tbb^2-T1^2)/2-1898.8*10^-6*(Tbb^3-T1^3)/3+3186.51*10^-9*(Tbb^4-T1^4)/4  // kJ/kmol
H2 = 31.421*(Tbb-T1)+976.058*10^-3*(Tbb^2-T1^2)/2-2353.68*10^-6*(Tbb^3-T1^3)/3+3092.73*10^-9*(Tbb^4-T1^4)/4  // kJ/kmol
Hsol = (H1+H2)/2  // kJ/kmol
// enthalpy at Tdp
lv1 = 25790*((469.7-329.9)/(469.7-309.2))^.38
lv2 = 28850*((507.6-329.9)/(507.6-341.9))^.38
Tdp = 329.9
H21ig = 65.4961*(Tdp-T1)+628.628*10^-3*(Tdp^2-T1^2)/2-1898.8*10^-6*(Tdp^3-T1^3)/3+3186.51*10^-9*(Tdp^4-T1^4)/4 + lv1 // kJ/kmol
H22ig = 31.421*(Tdp-T1)+976.058*10^-3*(Tdp^2-T1^2)/2-2353.68*10^-6*(Tdp^3-T1^3)/3+3092.73*10^-9*(Tdp^4-T1^4)/4 +lv2 // kJ/kmol
Hmixig = (H21ig+H22ig)/2
printf(" (a) \n \n H = "+string(Hsol)+" kJ/kmol \n \n \n (b) \n \n H = "+string(Hmixig)+" kJ/kmol")
