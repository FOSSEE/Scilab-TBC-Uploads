
clc
// given that

sigma_2=150 // Stress at a point in MPa
sigma_1=0 // Stress at a point in MPa
epsilon_2=0.0016 // Strain at a point in MPa
epsilon_1=0 // Strain at a point in MPa
d_0=12.8*10^-3 //Initial Diameter in m
sigma=450*10^6     //tensile strength in MPa
l0=250;     //Initial length in mm
e=0.06;     //strain
printf("Example 9.3\n")

printf("\n Part A")
E=(sigma_2-sigma_1)/(epsilon_2-epsilon_1) //Young's Modulus = stress/strain
printf("\n Modulus of elasticity is %.1f GPa \n which is very close to its true value 97 GPa",E/10^3)

printf("\n\n Part C")
A_0=%pi*d_0^2/4

F=sigma*A_0
printf("\n Maximum load sustained is %d N\n",floor(F/10)*10)
printf("\n Part D")
dl=e*l0
printf("\n Change in length is %d mm",dl);


