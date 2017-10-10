clc
// at 15 degree Celsius
Psat1 = 0.01705  // Saturation pressure in bar
hg1 = 2528.9 // Enthalpy in kJ/kg
// At 35 degree Celsius
Psat2 = 0.05628 // Saturation pressure in bar
hg2 = 2565.3 // Enthalpy in kJ/kg
fi1 = 0.55// Humidity ratio at state 1
Pw1 = fi1*Psat1 // water vapor pressure at state 1
fi2 = 1 // Humidity ratio at state 2
Pw2 = fi2*Psat2 // water vapor pressure at state 2 
P = 0.1 // Atmospheric pressure in MPa
W1 = (0.622*Pw1)/(P*10-Pw1)
W2 = (0.622*Pw2)/(P*10-Pw2)
MW = W2-W1 // unit mass flow rate of water
t2 = 35 // Air exit temperature in degree Celsius
t1 = 14 // make up water inlet temperature in degree Celsius 
m_dot = 2.78 // water flow rate in kg/s
cpa = 1.005 // Constant pressure heat capacity ratio in kJ/kg
h43 = 35*4.187 // Enthalpy change
h5 = 14*4.187 // Enthalpy at state 5in kJ/kg
m_dot_w = (-(W2-W1)*h5 - W1*hg1 + W2*hg2 + cpa*(t2-t1))/(h43) 
R = m_dot/m_dot_w 
MW = (W2-W1)*R //Make up water flow rate
RWA = R*(1+W1)
R = 0.287 // Gas constant 
V_dot = (RWA*R*(t1+273))/(P*1e03)  // Volume flow rate of air
printf("\n Example 15.13\n")
printf("\n Make up water flow rate is %f kg/s",MW)
printf("\n Volume flow rate of air is %f m^3/s",V_dot)
//The answers vary due to round off error

