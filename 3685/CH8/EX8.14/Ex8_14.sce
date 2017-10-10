clc
cp = 1.005 // Specific heat capacity of air in kJ/kgK 
T2 = 160 // Compressed air temperature in degree Celsius
T1 = 25 // Ambient temperature
T0 = 25 // Ambient temperature
R = 0.287 // Gas constant
P2 = 8 // Pressure ratio
P1 = 1 // Initial pressure of gas in bar
Q = -100 // Heat loss to surrounding in kW
m = 1 // Mass flow rate in kg/s

printf("\n Example 8.14")
W = Q + m*cp*((T1+273)-(T2+273)) // power input
AF = cp*((T2+273)- (T1+273))-(T0+273)*((cp*log((T2+273)/(T1+273))-(R*log(P2/P1))))  // Availability
e = AF/-W // efficiency 
printf("\n The power input is %f kW",W)
printf(" \n The second law efficiency of the compressor is %f percent",e*100)
//The answers vary due to round off error

