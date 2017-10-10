clear
// Variable Declaration
R=287// The specific gas constant in J/(kg K)
m=5 // The mass of ideal gas in kg
p=101.325// The atmospheric pressure in kPa
T=273+25// The temperature of an ideal gas in K

// Calculation
V=(m*R*T)/(p*1000)// The volume of an ideal gas in m**3
printf("\n The volume of an ideal gas is %0.2f  m**3",V)
