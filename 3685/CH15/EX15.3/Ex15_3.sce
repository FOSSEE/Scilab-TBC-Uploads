clc
Psat = 2.339 // Saturation pressure in kPa
fi3 = 0.50 // Humidity ratio
P = 101.3 // Atmospheric pressure in kPa
cp = 1.005 // Constant pressure heat addition in kJ/kg
Pw3 = fi3*Psat // Vapor pressure
Pa3 = P-Pw3 // Air pressure
W3 = 0.622*(Pw3/Pa3) // Specific humidity
Psa1_1 = 0.7156 // Saturation pressure in kPa
Pw1 = 0.7156 // moister pressure in kPa 
Pa1 = P-Pw1 // Air pressure
W1 = 0.622*(Pw1/Pa1)  // Specific humidity
W2 = W1 // Constant humidity process
T3 = 293 // Temperature at state 3 in K
Ra = 0.287 // Gas constant
Pa3 = 100.13 // Air pressure at state 3
va3 = (Ra*T3)/Pa3 // volume of air at state 3
SW = (W3-W1)/va3 // spray water 
tsat = 9.65 // Saturation temperature in K
hg = 2518 // Enthalpy of gas in kJ/kg
h4 = 10 // Enthalpy at state 4 in kJ/kg
t3 = T3-273
t2 = ( W3*(hg+1.884*(t3-tsat))-W2*(hg-1.884*tsat) + cp*t3 - (W3-W2)*h4 )/ (cp+W2*1.884)
printf("\n Example 15.3\n")
printf("\n Mass of spray water required is %f kg moisture/m^3",SW)
printf("\n Temperature to which air must be heated is %f degree celcius",t2)
//The answers vary due to round off error

