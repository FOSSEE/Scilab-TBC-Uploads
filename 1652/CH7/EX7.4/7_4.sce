clc
//Initialization of variables
R=8.315*10^7 //ergs/deg/mol
T=273.2 //deg
M=4 //g/mol
//calculations
u2=3*T*R/M
u=sqrt(u2)
//results
printf("root mean square velocity = %.2e cm/sec",u)
