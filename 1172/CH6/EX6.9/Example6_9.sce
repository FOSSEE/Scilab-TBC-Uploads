
clc
//Given that
c = 3e8 // speed of light in m/s
v = 2.4e8 // speed of meson
t_0 = 2e-8 // lifetime of meson in second
// sample problem 9 page No. 224
printf("\n \n\n # Problem 9 # \n")
printf("\n Standard formula used ")
t = t_0 / sqrt(1 - (v  / c )^2 ) // calculation of Lifetime of meson
printf ("\n Lifetime of meson is %e sec.", t )
