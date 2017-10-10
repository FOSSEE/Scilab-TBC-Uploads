clear
//
// Variable declaration
// From example 25.1
Q_i=14// Internal load in kW
Q_l=1.5// Latent heat gain in kW
Q_f=0.9// The fan motor power in kW
T_win=5// The temperature of water at inlet in °C 
T_wout=10.5// The temperature of water at outlet in °C 
C_pw=4.19// The specific heat capacity in kJ/kg.K

// Calculation
Q=Q_i+Q_l+Q_f// Total cooling load in kW
m_w=Q/(C_pw*(T_wout-T_win))// Mass water flow in kg/s
printf("\n \nMass water flow=%0.2f kg/s",m_w)

