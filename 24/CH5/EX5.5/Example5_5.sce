//Given that
g = 9.8  //in m/s^2
M = 3.3  //in kg
m = 2.1 //in kg

//Sample Problem 5-5
printf("**Sample Problem 5-5**\n")
//from FBD1
//both will have common acceleration
//mg - T = ma
//T = Ma
//adding -> mg = (M+m)a
a = m * g /(M + m)
T = m *g - m *a
printf("The acceleration of both the blocks is %f m/s^2\n", a)
printf("The tension in the string is %f N", T)