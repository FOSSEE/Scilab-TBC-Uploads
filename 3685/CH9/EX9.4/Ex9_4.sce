clc
// for T = 350 degree
T1 = 350 // Temperature in degree Celsius
v1 = 0.2003 // specific volume in m^3/kg
h1 = 3149.5 // Specific enthalpy in kJ/kgK
s1 = 7.1369 // Entropy in kJ/kgK
// for T = 400 degree
T2 = 400 // Temperature in degree Celsius
v2 = 0.2178 // specific volume in m^3/kg
h2 = 3257.5 // Specific enthalpy in kJ/kgK
s2 = 7.3026// Entropy in kJ/kgK
// Interpolation for T = 380

printf("\n Example 9.4")
T = [T1 T2]
v = [v1 v2]
h = [h1 h2]
s = [s1 s2]
v3 = interpln([T;v],380)
h3 = interpln([T;h],380)
s3 = interpln([T;s],380)

printf("\n The entropy, enthalpy and volume of steam at 1.4MPa and 380 degree are \n  %f kJ/kg K, %fkJ/kg, %fm3/kg respectively",s3,h3,v3)
//The answers vary due to round off error


