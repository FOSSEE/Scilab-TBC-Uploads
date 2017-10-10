clc
P1 = 0.18 // Diffuser static pressure in MPa
R = 0.287 // Gas constant
T1 = 37 // Static temperature 
P0 = 0.1// Atmospheric pressure in MPa
A1 = 0.11 // intake area in m^2
V1 = 267 // Inlet velocity in m/s
w = (P1*1e3/(R*(T1+273)))*A1*V1 // mass flow rate
g = 1.4 // Heat capacity ratio
c1 = sqrt(g*R*(T1+273)*1000) // velocity
M1 = V1/c1 // Mach number
A1A_ = 1.0570 // A1/A* A* = A_
P1P01 = 0.68207 // pressure ratio
T1T01 = 0.89644// Temperature ratio
F1F_ = 1.0284// Impulse function ratio
A2A1 = 0.44/0.11  // Area ratio
A2A_ = A2A1*A1A_// Area ratio
M2 = 0.135 // Mach number
P2P02 = 0.987 // Pressure ratio
T2T02 = 0.996 // Temperature ratio
F2F_ = 3.46// Impulse function ratio
P2P1 = P2P02/P1P01 // Pressure ratio
T2T1 = T2T02/T1T01// Temperature ratio
F2F1 = F2F_/F1F_ // Impulse function ratio
P2 = P2P1*P1 // Outlet  pressure
T2 = T2T1*(T1+273) // Outlet temperature
A2 = A2A1*A1 // Exit area
F1 = P1*A1*(1+g*M1^2) // Impulse function
F2 = F2F1*F1 // Impulse function
Tint = F2-F1 // Internal thrust
Text = P0*(A2-A1) // External thrust
NT = Tint - Text  // Net thrust

printf("\n Example 17.2 \n")
printf("\n Mass flow rate of air through diffuser is %f Kg/s",w)
printf("\n  Mach number of leaving air is %f ",M2)
printf("\n  Temperature of leaving air is %f degree celcius",T2-273)
printf("\n  Pressure of leaving air is %f MPa ",P2)
printf("\n Net thrust is %f kN",NT*1e3)

//The answers vary due to round off error

