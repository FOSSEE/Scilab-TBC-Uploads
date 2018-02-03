clear
// Variable declaration
m_w=4// The mass of water in kg
m_a=1// The mass of air in kg
h_ab=45.79// Enthalpy of air before in kJ/kg
h_aa=26.7// Enthalpy of air after in kJ/kg
C_pw=4.187// The specific heat capacity of water in kJ/kg.K

// Calculation
Q_l=h_ab-h_aa// Heat lost per kilogram air in kJ
Q_g=Q_l/m_w// Heat gain per kilogram water in kJ
dT=Q_g/C_pw// Temperature rise of water in K
printf("\n Temperature rise of water=%1.0f K",dT)

