clc
T1 = -15 // Source temperature in degree Celsius
T2 = 30 // Sink temperature in degree Celsius
Q2 = 1.75  // in kJ/sec
printf("\n Example 6.2")
W= Q2*((T2+273)-(T1+273))/(T1+273) // Least Power necessary to pump the heat out
 printf("\n Least Power necessary to pump the heat out is %f kW",W)
//The answers vary due to round off error

