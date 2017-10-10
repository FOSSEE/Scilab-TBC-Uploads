clc
T = (3754-3063)/(23.03-19.49) // Temperature at triple point in K
P = exp(23.03-(3754/195.2)) // Pressure at triple point
R = 8.3143 // Gas constant
Lsub = R*3754 // Latent heat of sublimation
Lvap = 3063*R // Latent heat of vaporisation
Lfu = Lsub-Lvap // Latent heat of fusion

printf("\n Example 11.4")
printf("\n Temperature at triple point is %f K",T)
printf("\n Pressure at triple point is %f mm Hg",P)
printf("\n\n Latent heat of sublimation is %d kJ/kg mol",Lsub)
printf("\n Latent heat of vapourization is is %d kJ/kg mol",Lvap)
printf("\n Latent heat of fusion is %d kJ/kg mol",Lfu)
//The answers vary due to round off error
