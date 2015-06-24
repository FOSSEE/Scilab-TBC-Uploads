exec('degree_rad.sci', -1)

//Given that
n1 = 1.33
n2 = 1.77
n3 = 1.00
theta1 = 50  //in degrees

//Sample Problem 34-4a
printf("**Sample Problem 34-4a**\n")
AORl = 90 - theta1
AORr = rtod(asin(n1/n2*sin(dtor(AORl))))
printf("The angle of reflection is %1.2fdegrees\n", AORl)
printf("The angle of refraction is %1.2fdegrees\n", AORr)

//Sample Problem 34-4b
printf("\n**Sample Problem 34-4b**\n")
Af = rtod(asin(n2/n3*sin(dtor(AORr))))
printf("The final angle of refraction is %1.2fdegrees", Af)