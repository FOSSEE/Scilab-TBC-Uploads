clc
Ta = 15 // Atmospheric temperature in degree Celsius 
rp = 8 // pressure ratio
g = 1.33 // heat capacity ratio for gas
g1 = 1.40 // heat capacity ratio for air
cv = 0.718 // Constant volume heat capacity
cpa = 1.005 // Constant pressure heat capacity for air
cpg = 1.11 // Constant pressure heat capacity for gas
R = 0.287 // Gas constant
Tb = (Ta+273)*(rp)^((g1-1)/g1) // Temperature after compression
Tc = 800  // Temperature after heat addition in degree Celsius
Td = (Tc+273)/((rp)^((g-1)/g)) // Temperature after expansion
Wgt = cpg*(Tc+273-Td)-cpa*(Tb-Ta-273)
Q1 = cpg*(Tc+273-Tb)
Q1_ = cpg*(Tc+273-Td)
h1 = 3775  // Enthalpy at state 1 in kJ/kg
h2 = 2183 // Enthalpy at state2 in kJ/kg
h3 = 138 // Enthalpy at state3 in kJ/kg
h4 = h3 // Isenthalpic process
Q1_st = h1-h3 // Total heat addition
Q_fe = cpg*(Tc-100) // Heat transfer by steam
was = Q1_st/Q_fe // air steam mass ratio
Wst = h1-h2// work done by steam turbine
PO = 190e03 // Power output in kW
ws = PO/(was*Wgt+Wst)// steam flow rate
wa = was*ws // Air flow rate
CV = 43300 // Calorific volume of fuel in kJ/kg
waf = CV/(Q1+Q1_) // Air fuel ratio
FEI = (wa/waf)*CV // Fuel energy input
noA = PO/FEI // combined cycle efficiency

printf("\n Example 13.11 \n")
printf("\n Air fuel ratio is %f ",waf)
printf("\n Overall efficiency of combined plant is %f percent ",noA*100)
//The answers vary due to round off error

