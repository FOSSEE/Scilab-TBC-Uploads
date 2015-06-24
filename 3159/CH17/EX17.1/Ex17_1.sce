// calculation of relative dielectric constant
clc
l= 10// length of capacitor in mm
b = 10 // width of capacitor in mm
d = 2 // distance of separation in mm
c = 1e-9 // capacitance in farad
epsilon_0 = 8.85e-12 // permittivity of free space
printf("\n Example 17.1")
epsilon_r = c*d*1e-3/(epsilon_0*l*1e-3*b*1e-3)

printf("\n Relative dielectric constant is %d",epsilon_r)

