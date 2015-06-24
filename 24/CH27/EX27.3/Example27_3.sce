//Given that
r = 900*10^-6  //in m
i = 17*10^-3  //in A
e = 1.6*10^-19  //in C
densityCopper = 8.96*10^3  //in kg/m^3
M = 63.54*10^-3  //in kg/mol
Na = 6.023*10^23

//Sample Problem 27-3
printf("**Sample Problem 27-3**\n")
A = %pi*r^2
J = i/A
n = densityCopper/M*Na
Vd = J/(n*e)
printf("The drift speed is %em/s", Vd)