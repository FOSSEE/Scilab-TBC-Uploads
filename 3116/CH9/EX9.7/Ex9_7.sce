

// Page no 334
clc
// Given
f = 220000 // Maximum load in N
sigma_y = 310 // Minimum field strength in MPa
sigma_t = 565 // Tensile strength strength in MPa
N= 5 // Factor of safety
printf("Design Example 9.1\n")
sigma_w = sigma_y*1e6/N
d = 2*sqrt (f/(2*%pi*sigma_w))// Calculation of diameter
printf("\n Diameter of each of two rods should be %.1f mm\n",d*1e3)

