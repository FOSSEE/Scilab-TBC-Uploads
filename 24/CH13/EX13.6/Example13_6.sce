//Given that
M = 290  //in kg
A = 1*10^-4  //in m^2
Y = 1.3*10^10  //in N/m^2
l = 0.50*10^-3  //in meter
g = 9.8  //in m/s^2
L = 1.00  //in meter

//Sample Problem 13-6
printf("**Sample Problem 13-6**\n")
//We know F = A*Y*(delataL/L)
l1 = poly(0,'l1')
p = M*g - 3*(A*Y*(l1/L)) - (A*Y*((l1+l)/L))
l1 = roots(p)
F3 = A*Y*(l1/L)
F1 = (A*Y*((l1+l)/L))
printf("The force on the leveled legs is %fN\n", F3)
printf("The force on the unleveled legs is %fN", F1)