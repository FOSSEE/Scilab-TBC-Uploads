//Given that
L = 1.0  //in meter
g = 9.8  //in m/s^2

//Sample Problem 16-5a
printf("**Sample Problem 16-5a**\n")
//(say)
m = 1
I = (1/3)*m*L^2
T = 2*%pi*sqrt(I/(m*g*(L/2)))
printf("The time period of SHm is %fs\n", T)

//Sample Problem 16-5b
printf("\n**Sample Problem 16-5b**\n")
Lo = (T/(2*%pi))^2*g
printf("The distance of center of oscillation from the pivot is %fcm", Lo*100)