clc
clear
printf("Example 9.13 | Page number 288 \n\n");
//Find magnitude and direction of heat transfer

//Given data
V_He = 0.3 //m^3 //volume of Helium
p_He = 20e5 //Pa //pressure of Helium
T_He = 273+30 //K //Temperature of Helium
V_O2 = 0.7 //m^3 //volume of O2
p_O2 = 6e5 //Pa //pressure of O2
T_O2 = 273+2 //K Temperature of O2
R_He = 2077 //J/kgK
R_O2 = 260 //J/kgK
Cv_He = 3116 //J/kgK
Cv_O2 = 662 //J/kgK
//Solution
m_He = (p_He*V_He)/(R_He*T_He) //kg //mass of Helium
m_O2 = (p_O2*V_O2)/(R_O2*T_O2) //kg //mass of O2
T_ad = (m_He*Cv_He*T_He+m_O2*Cv_O2*T_O2)/(m_He*Cv_He+m_O2*Cv_O2) //K //Temperature after mixing
T_final = 300 //K //final temperature
Q = (Cv_He*m_He+Cv_O2*m_O2)*(T_final-T_ad) //J //Magnitude of heat transfer
printf("Magnitude of heat transfer = %.2f kJ",Q*.001)
