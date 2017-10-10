clear
// Variable declaration
Z=4500// Altitude in m
p=575// mbar barometric pressure
t=-10// Temperature in °C

// Calculation
rho=1.2*(p/1013.25)*((273.15+20)/(273.15+t))// The density of dry air in kg/m**3
printf("\n The density of dry air,rho=%0.2f kg/m**3",rho)

