// Particle shape factor determination
clc
D = 1 // let
L = 1 //let
h = 2*D // length to diameter ratio
printf("\n Example 11.1")
printf("\n Part A:")
D_eq = D
A = %pi*D^2
V = %pi*D^3/6
k = A/V*D_eq
printf("\n Shape factor for spherical particle is %d",k)
printf("\n\n Part B:")
A = 6*L^2
V = L^3
D_eq = (6*V/%pi)^(1/3)
k = A/V*D_eq
printf("\n Shape factor for cubic particle is %.2f",k)
printf("\n\n Part C:")
A = 2*%pi*D^2/4+%pi*D*h
V= %pi*D^2/4*h
D_eq = (6*V/%pi)^(1/3)
k = A/V*D_eq
printf("\n Shape factor for cylindrical particle is %.2f",k)

