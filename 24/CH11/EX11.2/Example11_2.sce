//Given that
alpha = 0.335  //in rad/s^2
Wo = -4.6  //in rad/s
Ao = 0  //in rad
Af = 5* 2*%pi  //in rad

//Sample Problem 11-2a
printf("**Sample Problem 11-2a**\n")
//Using newton's second equation of motion
t = poly(0, 't')
p = Ao + Wo*t + 0.5*alpha*t^2 - Af
to = roots(p)
printf("At time equal to %fsec, the reference line will be at given position\n", to(2))

//Sample Problem 11-2c
printf("\n**Sample Problem 11-2c**\n")
p = Wo + alpha*t
ts = roots(p)
printf("At time equal to %fsec, the disk momentarily stops", ts)