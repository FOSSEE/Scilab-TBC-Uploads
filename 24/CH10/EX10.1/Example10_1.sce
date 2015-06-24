exec("degree_rad.sci",-1)

//Given that
m = 140 * 10^-3  //in kg
Vi = -39  //in m/s
Vf = 39  //in m/s

//Sample Problem 10-1a
printf("**Sample Problem 10-1a**\n")
//J = Pf - Pi
J = m *(Vf - Vi)
printf("The magnitude of impulse acted on the ball from bat is equal to %fN-s\n", J)

//Sample Problem 10-1b
printf("\n**Sample Problem 10-1b**\n")
t = 1.20* 10^-3  //in sec
Favg = J/t
printf("The average force during the collision is %fN\n", Favg)

//Sample Problem 10-1c
printf("\n**Sample Problem 10-1c**\n")
Vf = 45* [cos(dtor(30)), sin(dtor(30))]
Vi = [-39, 0]
J = m* (Vf - Vi)
printf("The magnitude of new inpulse is %fN-s\n", norm(J))
printf("The new impulse makes an angle of %f degress with the horizontal", rtod(atan(J(2)/ J(1))))