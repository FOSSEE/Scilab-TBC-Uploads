clear
// Variable declaration
m=1000// The capacity of meat store in tonnes
m_l=50// The amount of meat leaving the store in t/day
m_s=300// The amount of meat arrives from the ships in t/day
t=24*3600// Time in s

// Calculation
// Case(1)
m=90// t/day
T_1=2// °C
T_2=-12// °C
C=3.2// Specific heat capacity in kJ/(kg.K)
T_fp=-1// Freezing point of meat in °C
h_fg=225// Latent heat of freezing in kJ/kg
C_fm=1.63// Specific heat of frozen meat in kJ/(kg.K)
Q_f=(m*1000*((C*3)+h_fg+(C_fm*11)))/(t)// Cooling load in kW
printf("\n \nCase(1):Cooling load,Q_f=%3.0f kW",Q_f)

// Case(2)
Q_f=(m_s*10**3*(C_fm*T_1))/t// Cooling load in kW
printf("\n \nCase(2):Cooling load,Q_f=%2.0f kW",Q_f)

// Case(3)
Q_f=(m_l*10**3*((C*3)+h_fg+(C_fm*11)))/t// Cooling load in kW
printf("\n \nCase(3):Cooling load,Q_f=%3.0f kW",Q_f)

