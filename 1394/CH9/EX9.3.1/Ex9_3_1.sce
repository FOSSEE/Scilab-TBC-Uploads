

clc
//initialization of variables
const = 0.5 // The part of flow in the system which bypasses the region where the mass transfer occurs
v1 = 1 // cm/sec
al = 10^3
k = 10^-3 // cm/sec
v2 = 3 // cm/sec
//Calculations
C1byC10first = const + (1-const)*(exp(-k*al/v1))// c1/c10
appk1 = (v1/al)*(log(1/C1byC10first))// Apparent m.t.c for first case in cm/sec
C1byC10second = const + (1-const)*(exp(-(sqrt(3))*k*al/v2))//c1/c10 in second case
appk2 = (v2/al)*log(1/C1byC10second)// apparent m.t.c for second case in cm/sec
power = log(appk2/appk1)/log(v2/v1)
//Results
printf("The apparent m.t.c for the first case is %.2e cm/sec",appk1)
printf("\nThe apparent m.t.c for the second case is %.2e cm/sec",appk2)
printf("\nThe apparent is proportional to the power of %.2f of the velocity",power)
