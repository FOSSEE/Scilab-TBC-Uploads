// Calculate ratio of cross sectional areas
clc
r = 10 // radius in mm
t = 4 // thickness in angstrom
printf("\n Example 8.5")
r = 2*%pi*r*1e-3*t*1e-10/(%pi*(r*1e-3)^2)
printf("\n Ratio of cross sectional areas is %.0e ",r)

