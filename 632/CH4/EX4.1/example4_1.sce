//clc()
P1 = 760;//mmHg
T1 = 273.15;//K
V1 = 22.4143 * 10^-3;//m^3/mol
R1 = P1 * V1 / T1;
disp("m^3 mmHg / (molK)",R1,"Gas constant R =")
P2 = 101325;//N/m^2
T2 = 273.15;//K
V2 = 22.4143 * 10^-3;//m^3/mol
R2 = P2 * V2 / T2;//J/molK
R3 = R2 / 4.184;//cal/molK
disp("cal/molK",R3,"Gas constant R in MKS system =")