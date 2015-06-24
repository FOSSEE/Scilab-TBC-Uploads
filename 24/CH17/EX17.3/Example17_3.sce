//Given that
u1 = 1.4*10^-4  //in kg/m
u2 = 2.8*10^-4  //in kg/m
L1 = 3.0  //in m
L2 = 2.0  //in m
T = 400  //in N

//Sample Problem 17-3
printf("**Sample Problem 17-3**\n")
v1 = sqrt(T/u1)
v2 = sqrt(T/u2)
t1 = L1/v1
t2 = L2/v2
if t1<t2 then
    printf("The pulse on string1 will reach the knot first")
else
    printf("The pulse on string2 will reach the knot first")
end