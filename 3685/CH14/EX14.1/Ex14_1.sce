clc
T2 = -5 // Cold storage temperature in degree Celsius
T1 = 35 // Surrounding temperature in degree Celsius
COP = (T2+273)/((T1+273)-(T2+273))
ACOP = COP/3 // Actual COP
Q2 = 29 // Heat leakage in kW
W = Q2/ACOP
printf("\n Example 14.1\n")
printf("\n Power required to drive the plane is %f kW",W)
//The answers vary due to round off error

