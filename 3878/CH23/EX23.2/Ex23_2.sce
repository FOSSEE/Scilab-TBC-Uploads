clear
//Variable declaration
T_d1=21// The dry bulb temperature of air in °C
H=45// % saturation
T_d2=27// The dry bulb temperature of air in °C
T_wb1=20// The wet bulb temperature of air in °C
m=1.35// The mass flow rate of air in kg/s
C_pa=1.006// The specific heat capacity of air in kJ/kg.K
C_pw=4.187// The specific heat capacity of water in kJ/kg.K

//Calculation
 // 1.Total heat:
h_2=57.00// Enthalpy at 27°C DB, 20°C WB in kJ/kg
h_1=39.08// Enthalpy at 21°C DB, 45% sat in kJ/kg
dh=17.92// Heat to be removed in kJ/kg
Q_t=dh*m// Total heat in kW
printf("\n Total heat,Q_t=%2.1f kW", Q_t)


// 2.Latent heat:
x_2=0.0117// Moisture at 27°C DB, 20°C WB in kg/kg
x_1=0.0070// Moisture at 21°C DB, 45% sat in kg/kg
dx=x_2-x_1// Moisture to be removed in kg/kg
Q_l=dx*m*2440// Latent heat in kW
printf("\n Latent heat,Q_l=%2.1f kW", Q_l)


// 3.Sensible heat:
Q_s=(C_pa+((C_pw*x_2)))*(T_d2-T_d1)*m// Sensible heat in kW
printf("\n Sensible heat,Q_s=%1.1f kW", Q_s)

