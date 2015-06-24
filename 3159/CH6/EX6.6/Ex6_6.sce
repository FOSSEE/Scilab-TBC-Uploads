// Compute the angle at the bottom of groove of a boundary
clc
Gamma_gb = 1 // let, energy of grain boundary
Gamma_s = 3* Gamma_gb// energy of free surface
printf("\n Example 6.6")
theta = 2*acos(1/2*Gamma_gb/Gamma_s)
printf("\n Angle at the bottom of groove of a boundary is %d degrees.",ceil(theta*180/%pi))

