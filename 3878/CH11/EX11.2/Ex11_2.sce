clear
// Variable declaration
T_a=20// The ambient temperature in °C
m_p=10// g

// Calculation
P_v=10.34// Vapour pressure of R407C at 20°C in bar abs
P_o=11.70// Observed pressure in bar abs
P_p=P_o-P_v// Partial pressure of non-condensible gas in bar abs
M_m=(0.23*52)+(0.25*120)+(0.52*102)// Molecular mass
printf("\n \nPartial pressure of non-condensible gas=%1.2f bar abs \n Molecular mass=%2.0f",P_p,M_m)

