clc
M2 = 2.197 // Mach number
P2P0 = 0.0939 // pressure ratio
T2T0 = 0.5089 // Temperature ratio
P0 = 1 // Stagnation pressure in MPa 
T0 = 360 // Stagnation temperature in K
g = 1.4 // Heat capacity ratio
R = 0.287 // Gas constant
P2 = P2P0*P0*1e3 // Static Pressure
T2 = T2T0*T0 // Static temperature
c2 = sqrt(g*R*T2*1000)
V2 = c2*M2 //velocity at the exit from the nozzle
// for air
P_P0 = 0.528 // pressure ratio
T_T0 = 0.833 // Temperature ratio
P_ = P_P0*P0*1e3 // Static Pressure
T_ = T_T0*T0 //Static temperature
rho_ = P_/(R*T_) // density
V_ = sqrt(g*R*T_*1000) // Velocity at the exit from the nozzle 
At = 500e-06 // throat area
w = At*V_*rho_// Maximum flow rate of air

printf("\n Example 17.3\n")
printf("\n When divergent section act as a nozzle")
printf("\n Maximum flow rate of air is %f kg/s",w)
printf("\n Static temperature is %f K",T2)
printf("\n Static Pressure is %f kPa",P2)
printf("\n Velocity at the exit from the nozzle is %f m/s",V2)
//The answers vary due to round off error

// Part (b)
Mb = 0.308  // Mach number
P2P0b = 0.936 // Pressure ratio
T2T0b = 0.9812 // Temperature ratio
P2b = P2P0b*P0*1e3//Static Pressure 
T2b = T2T0b*T0 // Static temperature
c2b = sqrt(g*R*T2b*1000) // Velocity 
V2b = c2b*Mb //Velocity at the exit from the nozzle
printf("\n\n When divergent section act as a diffuser")
printf("\n Maximum flow rate of air is %f kg/s",w)
printf("\n Static temperature is %f K",T2b)
printf("\n Static Pressure is %d kPa",P2b)
printf("\n Velocity at the exit from the nozzle is %d m/s",V2b)

