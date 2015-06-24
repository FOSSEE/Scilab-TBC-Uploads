//Given that
M = 0.0320  //in kg/mol
T = 300  //in K
R = 8.31  //in J/mol.cal

//Sample Problem 20-6a
printf("**Sample Problem 20-6a**\n")
Vavg = sqrt(8*R*T/%pi/M)
printf("The average speed of molecule is %fm/s\n", Vavg)

//Sample Problem 20-6b
printf("\n**Sample Problem 20-6b**\n")
Vrms = sqrt(3*R*T/M)
printf("The rms speed of molecule is %fm/s\n", Vrms)

//Sample Problem 20-6c
printf("\n**Sample Problem 20-6c**\n")
Vmps = sqrt(2*R*T/M)
printf("The most probable speed of molecule is %fm/s", Vmps)