clc
T0 = 300 // Ambient temperature in K
T = 1500 // Resistor temperature in K
Q = -8.5 // Power supply in kW
 
// Case (a)
W = -Q // work transfer
I = Q*(1-T0/T) + W // Irreversibility
R = Q*(1-T0/T) // availability

printf("\n Example 8.19")
printf("\n Case A:")
printf("\n Rate of availability transfer with heat and the irreversibility rate are \n  %f kW and %f kW respectively.",I,R)
// Case (b)
T1 = 500 // Furnace wall temperature
Ib = - Q*(1-T0/T) + Q*(1-T0/T1) // Irreversibility
printf("\n Case B:")
printf("\n Rate of availability in case b is %f kW ",Ib)




