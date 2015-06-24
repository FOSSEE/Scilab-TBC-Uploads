exec ("Gravitation.sci",-1)

//Given that
m1 = 6 //kg
m2 = 4 //kg
m3 = 4 //kg
a = 2 * (10^-2)

//Sample Problem 14-1
printf("**Sample Problem 14-1**\n")
//F1 = F12 + F13
F12 = [0,-GForce(m1,m2,a)]
F13 = [GForce(m1,m3,2*a),0]
F1 = F12 + F13
printf("The magnitude of net force is approximately equal to %e N", norm(F1))