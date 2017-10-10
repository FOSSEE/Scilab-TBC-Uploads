clc
T1 = 90 // Operating temperature of power plant in degree Celsius 
T2 = 20 // Atmospheric temperature in degree Celsius
W = 1  // Power production from power plant in kW
E = 1880  // Capability of energy collection in kJ/m^2 h

printf("\n Example 6.6")
e_max = 1-((T2+273)/(T1+273))  // maximum efficiency
Qmin = W/e_max  // Minimum heat requirement per second
Qmin_ = Qmin*3600 // Minimum heat requirement per hour
Amin = Qmin_/E  // Minimum area requirement
printf("\n Minimum area required for the collector plate is %d m^2",ceil(Amin))


