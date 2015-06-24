exec('degree_rad.sci', -1)

//Given that
M = 1  //(say)
d = 0.50  //in meter
Wi = -2  //in rad/s
m = 1/3*M
Vi = 12  //in m/s
A = dtor(60)  //in rad

//Sample Problem 12-9
printf("**Sample Problem 12-9**\n")
//initial angular momentum
Ii = M*d^2/3 * 4
Lti = Ii*Wi  //of the turnstile
Lbi = m* Vi * d * cos(A)
//final angular momentum
//Lf = Itotal * Wf
Itotal = Ii + m*d^2
//Using angular momentum conservation
Wf = (Lti + Lbi)/Itotal
printf("The final angular velocity of the ball-turnstile is %frad/s", Wf)