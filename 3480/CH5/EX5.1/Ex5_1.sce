//Example 5.1, page no 101
clc
n_air=1//refractive index of air
n_glass=1.5//refractive index of glass
n_water=1.33//refractive index of water
s1=n_glass/(((n_glass-n_air)/2)-(n_air/5))
s2=n_water/(((n_water-n_glass)/-2)-(n_glass/-28))
printf("\n The value of s1 is +%f  cm",s1)
printf("\n The value of s2 is +%f  cm",s2)