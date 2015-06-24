// current in shielded metal arc welding
clc
V = 20 // applied voltage in Volt
b = 10 // base in mm
h = 10 // height in mm
e = 0.75 // efficiency
u = 10.3 // specific energy in J/mm^3
v = 10 // weld speed in mm/sec
printf("\n Example 12.2")
A  = 1/2*b*h // Area in mm^2
I = v*u*A/(e*V) // Current in Ampere
printf("\n Amount of current needed for welding is %d Ampere.",I)

