//Given that
n = 2
V = 2*10^-6  //in m^3
density = 1.738*10^3  //in kg/m^3
M = 24.312*10^-3  //in kg/m^3
Na = 6.023*10^23

//Sample Problem 42-2
printf("**Sample Problem 42-2**\n")
num = density*V*Na/M
electrons = n*num
printf("The number of electrons is equal to %e", electrons)