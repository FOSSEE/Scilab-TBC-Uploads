exec('Bernauli.sci', -1)

//Given that
density_Ethanol = 791  //in kg/m^3
A1 = 1.20*10^-3  //in m^2
A2 = A1/2
//Pressure in narrower section is lesser
deltaP = -4120  //in N/m^2

//Sample Problem 15-8
printf("**Sample Problem 15-8**\n")
A = [A1, A2]
density = density_Ethanol
h = 0
V = fsolve([0, 1], Bernauli)
printf("The volume flow rate is %e m^3/s", abs(A1*V(1)))