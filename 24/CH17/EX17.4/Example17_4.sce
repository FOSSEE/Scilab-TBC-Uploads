//Given that
u = 525*10^-3  //in kg/m
T = 45  //in N
f = 120  //in Hz
Ym = 8.5*10^-3  //in meter

//Sample Problem 17-4
printf("**Sample Problem 17-4**\n")
v = sqrt(T/u)
w = 2*%pi*f
Pavg = 0.5*u*v*w^2*Ym^2
printf("The average power transfered is equal to %fW", Pavg)