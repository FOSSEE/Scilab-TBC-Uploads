clc
// Part (a)
h1 = 2758 // Enthalpy at state 1 in kJ/kg
h2 = 1817 // Enthalpy at state 2 in kJ/kg
h3 = 192 // Enthalpy at state 3 in kJ/kg
h4 = 200// Enthalpy at state 4 in kJ/kg
Wt = h1-h2 // turbine work
Wp = h4-h3 // Pump work
Q1 = h1-h4 // Heat addition
Wnet = Wt-Wp // Net work doen
n1 = Wnet/Q1 // First law efficiency
WR = Wnet/Wt // Work ratio
Q1_ = 100 // Heat addition rate in MW
PO = n1*Q1_ // power output
cpg = 1000 // Specific heat capacity in J/kg
wg = (Q1_/(833-450)) // mass flow rate of gas
EIR = wg*cpg*((833-300)-300*(log(833/300)))/1000 // Exergy input
n2 = PO/EIR // Second law efficiency

printf("\n Example 12.8\n")
printf("\n Part (a)")
printf("\n The first law efficiency n1 is %f",n1*100)
printf("\n The second law efficiency n2 is %f",n2*100)
printf("\n The work ratio is %f",WR)
// Part (b)
h1b = 3398 // Enthalpy at state 1 in kJ/kg
h2b = 2130 // Enthalpy at state 2 in kJ/kg
h3b = 192 // Enthalpy at state 3 in kJ/kg
h4b = 200// Enthalpy at state 4 in kJ/kg
Wtb = 1268 // turbine work in kJ/kg
Wpb = 8  // Pump work in kJ/kg
Q1b = 3198// Heat addition rate in kW
n1b = (Wtb-Wpb)/Q1b //first law efficiency
WRb = (Wtb-Wpb)/Wtb // WOrk ratio
EIRb = 59.3 // Exergy input rate in MW
Wnetb = Q1_*n1b // net work done

n2b = Wnetb/EIRb // Second law efficiency
printf("\n Part (b)") 
printf("\n The first law efficiency n1 is %f",n1b*100)
printf("\n The second law efficiency n2 is %f",n2b*100)
printf("\n The work ration is %f",WRb)

// Part (c)
h1c = 3398 // Enthalpy at state 1 in kJ/kg
h2c = 2761 // Enthalpy at state 2 in kJ/kg
h3c = 3482 // Enthalpy at state 3 in kJ/kg
h4c = 2522 // Enthalpy at state 4 in kJ/kg
h5c = 192 // Enthalpy at state 5 in kJ/kg
h6c = 200// Enthalpy at state 6 in kJ/kg
Wt1 = 637 // Turbine work in kJ/kg
Wt2 = 960 // Turbine work in kJ/kg
Wtc = Wt1+Wt2  // Net turbine work in kJ/kg
Wp = 8 // Pump work in kJ/kg 
Wnetc = Wtc-Wp // net work done 
Q1c = 3198+721 // Heat addition
n1c = Wnetc/Q1c// First law efficiency
WRc = Wnetc/Wtc// Work ratio
POc = Q1_*n1c// Power output
EIRc = 59.3// Exergy input in MW
n2c = POc/EIRc // Second law efficiency
printf("\n Part (c)")
printf("\n The first law efficiency n1 is %f",n1c*100)
printf("\n The second law efficiency n2 is %f",n2c*100)
printf("\n The work ration is %f",WRc)

// Part (d)
T3 = 45.8 // saturation temperature at 0.1 bar in degree celsius 
T1 = 295 // saturation temperature at 80 bar in degree celsius 
n1d = 1-((T3+273)/(T1+273)) // First law efficiency
Q1d = 2758-1316 // Heat addition
Wnet = Q1d*n1d // Net work output
Wpd = 8 // Pump work in kJ/kg
Wtd = 641// Turbine work in kJ/kg
WRd = (Wt-Wp)/Wt // Work ratio
POd = Q1_*0.439// Power output
EIRd = (Q1_/(833-593))*cpg*((833-300)-300*(log(833/300)))/1000 //Exergy Input rate in MW
n2d = POd/EIRd // Second law efficiency
printf("\n Part (d)")
printf("\n The first law efficiency n1 is %f",n1d*100)
printf("\n The second law efficiency n2 is %f",n2d*100)
printf("\n The work ration is %f",WRd)
//The answers vary due to round off error
