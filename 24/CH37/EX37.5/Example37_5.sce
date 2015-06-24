exec('degree_rad.sci', -1)

//Given that
N = 1.26*10^4
w = 25.4*10^-3  //in meter
l1 = 589*10^-9  //in meter
l2 = 589.59*10^-9  //in meter

//Sample Problem 37-5a
printf("**Sample Problem 37-5a**\n")
d = w/N
m = 1
theta = asin(m*l1/d)
theta = rtod(theta)
printf("The first order maxima occurs at an angle of %fdegree from the center\n", theta)

//Sample Problem 37-5b
printf("\n**Sample Problem 37-5b**\n")
theta = rtod(theta)
D = m/(d*cos(theta))
deltaL = l2-l1
deltaTHETA = D*deltaL
printf("The anglar sepration between the two first orderlines is %erad\n", deltaTHETA)

//Sample Problem 37-5c
printf("\n**Sample Problem 37-5c**\n")
Lavg = (l1+l2)/2
R = Lavg/(m*deltaL)
N = R/m
printf("The least number of rulings a grating can have is %d", N)