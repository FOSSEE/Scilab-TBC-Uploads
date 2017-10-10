clear
// Variable declaration
P_c=10// kW
T_e=-35// Evaporating temperature in °C
T_c=40// Condensing temperature in °C
T_s=5// Subcooling temperature in K
T_cin=20// Compressor inlet temperature in °C
T_cout=0// Zero subcooling temperature in °C

// Calculation
//(a)
v_s1=146.46// m**3/kg
v_s2=135.25// m**3/kg
v_sr=v_s1/v_s2// The ratio of specific volume
// Assuming the compressor pumps the same volume flowrate:
m_1bym_2=v_sr// Flow rate ratio
printf("\n \nFlow rate ratio,m_2/m_1=%1.3f",m_1bym_2)

//(b)
h_1=392.51// Suction gas enthalpy at 20°C in kJ/kg
h_2=375.19// Suction gas enthalpy at 0°C in kJ/kg
h_f=257.77// Liquid enthalpy at the expansion valve inlet at 40°C in kJ/kg
dh_1=h_1-h_f// Evaporator enthalpy difference at rating condition in kJ/kg
dh_2=h_2-h_f// Evaporator enthalpy difference with 0°C suction in kJ/kg
dh_r=dh_2/dh_1// Enthalpy difference ratio
C_c=P_c*m_1bym_2*dh_r// Compressor capacity corrected for suction temperature change in kW
printf("\n \nCompressor capacity corrected for suction temperature change=%1.2f kW",C_c)

//(c)
h_f=249.67// Liquid enthalpy at the expansion valve inlet at 35°C in kJ/kg
dh=h_2-h_f// Evaporator enthalpy difference at application condition in kJ/kg
dh_r=dh/dh_1// Enthalpy difference ratio
C_cact=P_c*m_1bym_2*dh_r// Actual compressor capacity in kW
printf("\n \nActual compressor capacity=%2.2f kW",C_cact)

//(d)
h_g=350.13// Suction gas enthalpy at evaporator outlet, -30°C (5 K superheat) in kJ/kg
dh_e=h_g-h_f// Useful evaporator enthalpy difference in kJ/kg
dh_r=dh_e/dh_1// Enthalpy difference ratio
C_eact=P_c*m_1bym_2*dh_r// Actual evaporator capacity in kW
printf("\n \nActual evaporator capacity=%1.2f kW",C_eact)

