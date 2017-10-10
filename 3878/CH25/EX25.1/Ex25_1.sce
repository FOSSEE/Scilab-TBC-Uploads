clear
//
// Variable Declaration
T_d=21// The dry bulb temperature in °C
Q=14// Internal load in kW
H=50// % saturation
Q_l=1.5// Latent heat gain in kW
T_ain=12// The inlet air temperature in °C 
C_p=1.02// The specific heat capacity of air in kJ/kg.K

// Calculation
deltaT=T_d-T_ain// Air temperature rise through room in K
m=Q/(deltaT*C_p)// Air flow for sensible heat in kg/s
x=0.007857// Moisture content of room air, 21, 50%
x_p=Q_l/(2440*m)// Moisture to pick up
x_ain=x-x_p// Moisture content of entering air 
printf("\n \n Air flow for sensible heat=%1.3f kg/s \nMoisture content of entering air=%0.5f",m,x_ain)

