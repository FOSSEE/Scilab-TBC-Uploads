//Given that
v = 242  //in m/s
f = 1250  //in Hz
Vs = 343  //in m/s

//Sample Problem 18-8a
printf("**Sample Problem 18-8a**\n")
F = (Vs/(Vs-v))*f
printf("The frequency measured by the detector on the pole is %fHz\n", F)

//Sample Problem 18-8b
printf("\n**Sample Problem 18-8b**\n")
Fe = (Vs+v)/Vs*F
printf("The frequency measured by the detector on the rocket is %fHz", Fe)