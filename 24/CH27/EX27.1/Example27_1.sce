//Given that
rate = 450*10^-6  //in m^3/s
e = 1.6*10^-19
Na = 6.023*10^23
M = 18*10^-3  //in kg/mol
density = 1000  //in kg/m^3

//Sample Problem 27-1
printf("**Sample Problem 27-1**\n")
n = 10
i = e*n*Na/M*density*rate
printf("The current of negative charge is equal to %eA", i)