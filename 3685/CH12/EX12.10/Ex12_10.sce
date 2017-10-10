clc
h1 = 3037.3 // Enthalpy at state 1 in kJ/kg
x = 0.96 // Steam quality
h2 = 561+(x*2163.8) // Enthalpy at state 2 
s2 = 1.6718+(x*5.3201)// Entropy at state 2 
s3s = s2 // Isentropic process
x3s = (s3s-0.6493)/7.5009 // Quality at state 3s 
h3s = 191.83+(x3s*2392.8) // Enthalpy at state 3s 
h23 = 0.8*(h2-h3s) // Enthalpy change in process 23
h3 = h2-h23 // Enthalpy at state 3
h5 = 561.47  // Enthalpy at state 5
h4 = 191.83// Enthalpy at state 4
Qh = 3500 // Heat addition in kJ/s
w = Qh/(h2-h5) // mass flow rate
Wt = 1500 // Turbine work
ws = (Wt+w*(h2-h3))/(h1-h3) // Steam flow rate 
ws_ = 3600*ws  // Steam flow rate  in kg/h
h6 = ((ws-w)*h4+w*h5)/ws  //Enthalpy at state 6
h7 = h6// Enthalpy at state 7
n_boiler = 0.85 // Boiler efficiency
CV = 44000 // Calorific value of fuel in kJ/kg
wf = (1.1*ws_*(h1-h7))/(n_boiler*CV) // Fuel consumption rate

printf("\n Example 12.10\n")
printf("\n Fuel burning rate is %f tonnes/day",wf*24/1000)
//The answers vary due to round off error

