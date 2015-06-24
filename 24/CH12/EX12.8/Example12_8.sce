//Given that
t = 1.87  //in sec
I1 = 19.9  //in kg.m^2
I2 = 3.93  //in kg.m^2
//From the figure
A1 = 0.5*2*%pi  //in rad
A2 = 3.5*2*%pi  //in rad

//Sample Problem 12-8
printf("**Sample Problem 12-8**\n")
//w1 = I2*w2/I1
//w1*t1 = A1
//w2*t2 = A2
//t = t1 + t2
//t = A1/w1 + A2/w2
//t = A1/(I2*w2/I1) + A2/w2
w2 = (1/t) * (A1*I1/I2 + A2)
printf("The angular speed during the tuck should be %frev/s", w2/(2*%pi))