exec('Bernauli.sci', -1)

//Given that
Ao = 1.2*10^-4  //in m^2
A = 0.35*10^-4  //in m^2
h = 45*10^-3  //in m
density_water = 998  //in kg/m^3

//Sample Problem 15-7
printf("**Sample Problem 15-7\n")
A = [A, Ao]
deltaP = 0  //in N/m^2
density = density_water
V = fsolve([0,0], Bernauli)
FlowRate = A(1)*V(1)
printf("The volume flow rate from the tap is equal to %fcm^3/s", FlowRate*10^6)