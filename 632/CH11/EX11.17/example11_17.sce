//clc()
T1 = 250;//K
T = 273.15;//K
T2 = 400;//K
Cice = 2.037;//kJ/kgK
T3 = 373.15;//K
Cliq = 75.726;//kJ/kmolK
//Cp = 30.475 + 9.652*10^-3*T + 1.189*10^-6*T^2
Hfusion = 6012;//kJ/kmol
Hvap = 40608;//kJ/kmol
//1 - Heat for raising the temperature of ice, H1
H1 = Cice * (T - T1);
//2 - Latent heat of fusion of ice,  Hf
Hf = Hfusion / 18.016;//kJ
//3 - Sensible heat of raising the temperature of water, H2
H2 = Cliq * ( T3 - T)/18.016;
//4 - Latent heat of vaporization of water, Hv
Hv = Hvap / 18.016;
//5 - Sensible heat of raising the temperature of water vapou, H3
H3 = (integrate('30.475 + 9.652*10^-3*T + 1.189*10^-6*T^2','T',T3,T2))/18.016;
Q = H1 + H2 + H3 + Hf + Hv;
disp("kJ",Q,"Heat required = ")