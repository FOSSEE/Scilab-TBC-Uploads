//Given that
L = 1  //(say)
m = 1.8  //in kg
M = 2.7  //in kg
d = L/4
g = 9.8  //in m/s^2

//Sample Problem 13-1
printf("**Sample Problem 13-1**\n")
//From the figure
//Balancing torque from A
//N2*L = M*g*L/4 + m*g*L/2
N2 = M*g/4 + m*g/2
//similarly
N1 = M*g*(3/4) + m*g/2
printf("The Normal from point A is %fN\n", N1)
printf("The Normal from point B is %fN", N2)