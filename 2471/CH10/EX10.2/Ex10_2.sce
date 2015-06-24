clear ;
clc;
// Example 10.2
printf('Example 10.2\n\n');
printf('Page No. 298\n\n');

// given
m1 = 0.75;// Percentage of fresh air mixture
T1 = 31;// Dry Bulb Temperature of  fresh air in degree celcius
w1 = 0.0140;// Humidity  of fresh air at temperature T1 in kg/kg
m2 = 0.75;// Percentage of recirculated air mixture
T2 = 22;// Dry Bulb Temperature of recirculated air in degree celcius
w2 = 0.0080;// Humidity  of recirculated air at temperature T2 in kg/kg
m = 1.50;// mass flow rate of final air mixture in kg/s
T = 10;// Dew Point temperature in degree celcius

//In air conditioning => m1*w1 + m2*w2 = m*w
w = (m1*w1 + m2*w2)/m// in kg/kgs
printf('The humidity of the air mixture  is %.4f kg/kg \n',w)


// from the psychrometric chart, at w = 0.011kg/kg, the  dry bulb temperature is = 26.5 degree celcius  also the humidity of saturated air at 10 degree celcius is 0.0075kg/kg
T_w = 26.5;// Dry Bulb temerature in degree celcius
w_10 = 0.0075;// humidity at temperatue T in kg/kg

//the specific enthalpy in J/kg can be calculated by the formula => h = (1.005*10^3*T) +(w*((2.50*10^6)+(1.87*10^3*T))); where the T is the temperature and w is the humidity at temperature T

h_a = (1.005*10^3*T_w) +(w*((2.50*10^6)+(1.88*10^3*T_w)));// Specific enthalpy of recirculated  air in J/kg
h_s = (1.005*10^3*T) +(w_10*((2.50*10^6)+(1.87*10^3*T)));// Specific enthalpy of saturated air at 10 degree celcius in J/kg

Q = m*(h_a - h_s);// in Watts
printf('The cooling load on the washer is %.0f W',Q)
// Answer wrongly calculated in the book
