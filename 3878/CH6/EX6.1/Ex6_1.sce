clear
// Variable declaration
Q_1=12// Heat load in kW
T_c1=50// The condensing temperature in °C
T_o1=35// The maximum outdoor temperature in °C
T_o2=15// The reduced outdoor temperature in °C
Q_2=8// The reduced heat load in kW

// Calculation
deltaT=T_c1-T_o1// Temperature Difference in K
CR=Q_1*10**3/deltaT// Condenser Rating in W/K
CR=CR*10**-3// Condenser Rating in kW/K
deltaT_15=Q_2/CR// Temperature Difference at 15°C 
T_c2=T_o2+deltaT_15//The Condensing temperature at 15°C
printf("\n Cooling Rating= %0.1f  kW/K",CR)
printf("\n Temperature Difference at 15°C=%2.0f°C",deltaT_15)

printf("\n The Condensing temperature at 15°C=%2.0f°C",T_c2)

