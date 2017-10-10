clear
//
// Variable declaration
w_a=8.4// The mass flow rate of air in kg/s
R=3.8// Rating of an air-cooling evaporator in kW/k
T_a=-15// Entering air temperature in °C
T_r=-21// Refrigerant temperature in °C

// Calculation
deltaT=(T_a+273)-(T_r+273)// Rating LMTD in K
E=R*deltaT// Rated duty in kW
C_pair=1.006// kJ/kg.K
T_ar=E/(C_pair*w_a)// Reduction in air temperature in °C 
T_al=T_a-T_ar// Air leaving temperature in °C
deltaT_min=(T_al+273)-(T_r+273)// K
deltaT_max=deltaT// K
LMTD=(deltaT_max-deltaT_min)/(log(deltaT_max/deltaT_min))
printf("\n \nLMTD=%1.1f K",LMTD)

