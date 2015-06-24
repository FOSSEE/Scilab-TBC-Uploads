// Given data:
clc
T1=500+273.0 //source temp in kelvin 
T2=100+273.0 //sink temperature in kelvin
W=1 // output power in kW

nth=1-(T2/T1) // thermal efficiency

Q1=1/nth // heat supplied in kW

Q2=Q1-W // heat rejected in kW

printf("The heat rejected is %0.2f kW",Q2)

// the answer in book is wrong due to incorrect  value of T1 
