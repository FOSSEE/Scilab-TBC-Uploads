exec("degree_rad.sci",-1)

//Given that
mass = 225  //in kg
displacement = 8.5  //in meter
F1 = 12  //in N
Theta1 = dtor(30)  //in rad
F2 = 10  //in N
Theta2 = dtor(40)  //in rad

//Sample Problem 7-2a
printf("**Sample Problem 7-2a**\n")
//form the definition of Work done
W1 = F1 * displacement * cos(Theta1)
W2 = F2 * displacement * cos(Theta2)
//The net work done
W = W1 + W2
printf("The spies transfer %eJ amount of energy during the given displacement\n", W)

//Sample Problem 7-2b
printf("\n**Sample Problem 7-2b**\n")
printf("Work done by the normal in the process is 0J\n")
printf("Work done by the gravity in the process is 0J\n")

//Sample Problem 7-2c
printf("\n**Sample Problem 7-2c**\n")
//Using Work Energy theorem
//W = Kf - Ki
//Ki = 0
v_final = sqrt(2* W/mass)
printf("The final velocity of the safe is equal to %e", v_final)