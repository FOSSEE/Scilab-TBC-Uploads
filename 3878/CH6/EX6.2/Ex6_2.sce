clear
// Variable declaration
deltaT=5.2// The temperature rise in K
E=930// Total duty at the condenser in kW
C_pw=4.187// The specific heat of water in kJ/kg K

// Calculation
mdot=E/(deltaT*C_pw)// The amount of water required in kg/s
printf("\n %0.3f kg/s water flow is required.",mdot)
