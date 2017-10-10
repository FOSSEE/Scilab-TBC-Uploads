clc
t1 = 15 // Heat exchanger inlet temperature in degree Celsius
t2 = 800 // Heat exchanger exit temperature in degree Celsius
t3 = 650 // Turbine exit temperature in degree Celsius
t4 = 500 // Nozzle exit temperature in degree Celsius
v1 = 30 // Velocity of steam at heat exchanger inlet in m/s
v2 = 30// Velocity of steam at turbine inlet in m/s
v3 = 60 // Velocity of steam at nozzle inlet in m/s
w = 2 // mass flow rate in kg/s
cp = 1005 // Specific heat capacity of air in kJ/kgK

printf("\n Example 5.5")
Q1_2 = w*cp*(t2-t1) // rate of heat transfer
printf("\n The rate of heat transfer to the air in the heat exchanger is %d kJ/s",Q1_2/1e3)

W_T = w*( ((v2^2-v3^2)/2) + cp*(t2-t3)) // power output from the turbine
printf("\n The power output from the turbine assuming no heat loss is %f kW",W_T/1000)
v4 = sqrt( (v3^2) + (2*cp*(t3-t4)) ) // velocity at the exit of the nozzle
printf("\n The velocity at the exit of the nozzle is %d m/s",v4)
//The answers vary due to round off error

