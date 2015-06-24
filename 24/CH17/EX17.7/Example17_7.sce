//Given that
L = 1.2  //in meter
u = 1.6*10^-3  //in kg/m
f = 120  //in Hz
g = 9.8  //in m/s^2

//Sample Problem 17-7a
printf("**Sample Problem 17-7a**\n")
n = 4
//T = m*g
//v = sqrt(m*g/u)
//f = n*v/(2*L)
m = (2*L*f)^2*u/(g*n^2)
printf("The value of m should be %fkg\n", m)

//Sample Problem 17-7b
printf("\n**Sample Problem 17-7b**\n")
M = 1  //in kg
n = sqrt((2*L*f)^2*u/(g*M))
if abs(n - round(n)) < 0.01 then
    printf("The allowed wave mode is %d", n)
else
    printf("No wave mode will be allowed")
end