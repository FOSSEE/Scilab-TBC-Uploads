// Adhesive wear in sliding
clc
v = 1 // wear volume in mm^3
k = 1e-2 // from table
W = 100 //load in kg
p = 150 // hardness in HB
printf("\n Example 4.2")
L = 3*v*p/(k*W)
printf("\n Distance traveled is %d mm.",L)

