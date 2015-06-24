// Variable Declaration
Q = 1.0         //Water discharge(m^3/sec)
h = 200.0       //Height(m)
n_h = 0.85      //Hydraulic efficiency
n_e = 0.95      //Electric efficiency

// Calculation Section
n = n_h*n_e             //Overall efficiency
P = (736.0/75)*Q*h*n    //Electrical power available(kW)
E = P*1.0               //Energy available in an hour(kWh)

// Result Section
printf('Electrical power available = %.2f kW' ,P)
printf('Energy available in an hour = %.2f kWh' ,E)
