exec('degree_rad.sci', -1)
exec('cross_product.sci', -1)

//Given that
A = dtor(30)  //in rad
r = 3*[cos(A), 0, sin(A)]
F1 = 2*[1, 0, 0]
F2 = 2*[0, 0, 1]
F3 = 2*[0, 1, 0]

//Sample Problem 12-3
printf("**Sample Problem 12-3**\n")
T1 = crossproduct(r, F1)
T2 = crossproduct(r, F2)
T3 = crossproduct(r, F3)
printf("The torque due to F1 is equal to %fN.m\n", norm(T1))
printf("The torque due to F2 is equal to %fN.m\n", norm(T2))
printf("The torque due to F3 is equal to %fN.m", norm(T3))