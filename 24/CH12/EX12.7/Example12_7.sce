//Given that
Iwh = 1.2  //in kg.m/s^2
Wwh = 3.9*2*%pi  //in rad/s
Ib = 6.8  //in kg.m/s^2

//Sample Problem 12-7
printf("**Sample Problem 12-7**\n")
//angular momentum conservation along the axis of rotation of the system
//Ib*Wb  - Iwh*Wwh = Iwh*Wwh
Wb = 2*Iwh*Wwh/Ib
printf("The angular speed of the composite system is %frev/s", Wb/(2*%pi))