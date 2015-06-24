//Given that
mass = 2.0  //in kg
v1 = 4.0  //in m/s^2
Ff = 15  //in N
k = 10^4  //in N/m

//Sample Problem 8-7
printf("**Sample Problem 8-7**\n")
//Using energy conservation
//Ki = Uf + TEf
Ki = .5* mass* v1^2
//Uf = .5*k*x^2
//TEf = Ff* x
s=poly(0,"s")
p = .5*k*s^2 + Ff* s - Ki
x = roots(p)
printf("The compression in the spring is equal to %fcm", x(1)*100)