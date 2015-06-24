// Yielding of a thin walled shell
clc
r = 254 // radius in mm
t = 2.54 // thickness in mm
sigma_1 = 140 // stress in MPa
sigma_2 = 140 // stress in MPa
sigma_min = 0 // stress in MPa
printf("\ Example 2.5")
Y = sigma_2 - sigma_min
p = 2*(t/1e3)*Y/(r*1e-3)
printf("\n\n According to maximum shear stress criterion, Required pressure is %.1f MPa",p)
Y =  sqrt(0.5*(sigma_1^2+sigma_2^2))
p = 2*(t/1e3)*Y/(r*1e-3)
printf("\n\n According to maximum distortion energy criterion, Required pressure is %.1f MPa",p)


