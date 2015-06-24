exec("degree_rad.sci",-1)

//Given that
m1 = 1.2  //in kg
m2 = 2.5  //in kg
m3 = 3.4  //in kg
a = 140  //in cm

//Sample Problem 9-1
printf("**Sample Problem 9-1**\n")
r1 = [0, 0]
r2 = [a, 0]
r3 = [a*cos(dtor(60)), a*sin(dtor(60))]
Rc = (m1*r1 + m2*r2 + m3*r3)/(m1 + m2 + m3)
printf("The co-ordinate of center of mass are (%f, %f)", Rc(1), Rc(2))