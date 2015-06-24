exec("degree_rad.sci",-1)

//Given that
m = 2.0  //in kg
v1 = [0, -0.50]
v2 = [0.40, 0]

//Sample Problem 9-4
printf("**Sample Problem 9-4**\n")
deltaP = m* (v2 - v1)
printf("The change in mometum vactor in kg.m/sec is %1.1fi + %1.1fj", deltaP(1), deltaP(2))