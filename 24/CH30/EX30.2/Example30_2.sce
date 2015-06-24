exec('degree_rad.sci', -1)

//Given that
i1 = 15  //in A
i2 = 32  //in A
d = 5.3*10^-2  //in m
uo = 4*%pi*10^-7  //in SI unit

//Sample Problem 30-2
printf("**Sample Problem 30-2**\n")
R = d/sqrt(2)
B1 = uo*i1/(2*%pi*R)
B2 = uo*i2/(2*%pi*R)
theta = atan(B1/B2)
B = sqrt(B1^2 + B2^2)
printf("The magnitude of net magnetic field is %eT\n", B)
printf("The angle made by the net magnetic field by the positive x-axis is %fdegrees", rtod(theta)+45)