// Effect of porosity on properties
clc
UTS0 = 125 // in MPa
E0 = 500 // Youngs modulus in GPa
k0 = 0.6 // thermal conductivity in W/m-K
n = 6 // given
p = 0.15 // given
printf("\n Example 11.7")
UTS = UTS0*exp(-5*p) 
E = E0*(1-1.9*p+0.9*p^2)
k = k0*(1-p)
printf("\n Due to %d%% porosity", p*100)
printf("\n Tensile strength becomes %d MPa.",UTS)
printf("\n Modulus of elasticity becomes %d GPa.",E)
printf("\n Thermal conductivity becomes %.2f W/m-K.",k)

