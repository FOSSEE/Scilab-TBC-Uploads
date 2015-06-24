//Given that
L = 12  // in meter
m = 45 //in kg
h = 9.3  //in meter
M = 72  //in kg
g = 9.8  //in m/s^2

//Sample Problem 13-2
printf("**Sample Problem 13-2**\n")
//From the figure
N2 = (M+m)*g
A = asin(h/L)
//Balancing torque from the bottom point of the ladder
N1 = (m*g*L/3*cos(A)+M*g*L/2*cos(A))/(L*sin(A))
f = N1
printf("The normal force from the wall is equal to %fN\n", N1)
printf("The normal force from the pavement is equal to %fN\n", N2)
printf("The frictional force from the pavement is equal to %fN", f)