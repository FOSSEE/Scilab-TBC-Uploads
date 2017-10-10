clc
tsat = 120.2 // Saturation temperature in degree Celsius
hfg = 2201.9 // Latent heat of fusion in kJ/kg
T1 = 120.2 // Generator temperature in degree Celsius
T2 = 30 // Ambient temperature in degree Celsius
Tr = -10 // Operating temperature of refrigerator in degree Celsius
COP_max = (((T1+273)-(T2+273))*(Tr+273))/(((T2+273)-(Tr+273))*(T1+273)) // Ideal coefficient of performance 
ACOP = 0.4*COP_max // Actual COP
L =  20 // Refrigeration load in tonnes
Qe = (L*14000)/3600 // Heat extraction in KW
Qg = Qe/ACOP // Heat transfer from generator 
x = 0.9 // Quality of refrigerant
H = x*hfg // Heat extraction
SFR = Qg/H // Steam flow rate
printf("\n Example 14.7\n")
printf("\n Steam flow rate required is %f kg/s",SFR)
//The answers vary due to round off error

