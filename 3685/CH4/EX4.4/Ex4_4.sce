clc
// Part (a)
m = 3 // mass of substance in kg
V1 = 0.22 // Initial volume of system in m^3
P1 = 500 // Initial pressure of system in kPa 
P2 = 100 // Final pressure of system in kPa  
V2 = V1*(P1/P2)^(1/1.2) // Final volume of system
dU = 3.56*(P2*V2-P1*V1) // Change in internal energy of substance in kJ/kg
n = 1.2 // polytropic index
W = (P2*V2-P1*V1)/(1-n) // work done in process
Q = dU+W // Heat addition in process

printf("\n Example 4.4")
printf("\n Part A:")
printf("\n For the quasi static process is: \n ")
printf("Q:   %fkJ",Q)
printf("\n dU: %fkJ",dU)
printf("\n W: %fkJ",W)
//The provided in the textbook is wrong
// Part (b)
printf("\n\n Part B:")
Qb = 30 // heat transfer in kJ 
Wb = Qb-dU // Work done in kJ
printf("\n Work transfer for the process is %fkJ.",Wb) 
//The answers vary due to round off error
// Part (c)
printf("\n\n Part C:")
printf("\n Wb is not equal to integral(p*dv) since the process is not quasi static.")

