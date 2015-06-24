//Given that
l = 3.5  //in meter
b = 4.2  //in meter
h = 2.4  //in meter
g = 9.8  //in m/s^2

//Sample Problem 15-1a
printf("**Sample Problem 15-1a**\n")
P = 1.0*1.01*10^5  //in N/m^2
density_air = 1.21  //in kg/m^3 at 1atm pressure
V = l*b*h  //Volume of the air
W = density_air*V*g  //Weight of the air
printf("The weight of the air in the room is equal to %fkg\n", W)

//Sample Problem 15-1b
printf("\n**Sample Problem 15-1b**\n")
A = l*b
F = P*A
printf("The magnitude of atmosphere force on the floor of the room is %eN\n", F)