clear
// Variable declaration
P=15// kW
n_b=85// The effiency of the gas boiler in %
SCOP=3// An average or seasonal COP (SCOP) of heat pump

// Calcualtion
// For the gas boiler
R_pf=17.65// Rate of primary fuel use in kW
m_co2=0.19// The mass of carbon in kg
R_co2=R_pf*m_co2// Rate of CO_2 emission in kg/h
// For example
Gp=3// p/kWh
Rc=R_pf*Gp// Boiler Running cost in p per hour of heating
printf("\n Boiler Running cost=%2.0fp per hour of heating.",Rc)

// For heat pump
T_R_pf=10//  Rate of primary fuel use in kW (total)
R_pf=5// Rate of primary fuel use in kW
m_co2=0.43// The mass of carbon in kg
R_co2=R_pf*m_co2,// Rate of CO_2 emission in kg/h

// For example
Ep=9// p/kWh
Rc=R_pf*Ep// HP Running cost in p per hour of heating
printf("\n HP Running cost=%2.0fp per hour of heating.",Rc)

