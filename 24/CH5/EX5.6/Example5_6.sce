exec("degree_rad.sci", -1)

//Given that
g = 9.8  //in m/s^2
m = 15  //in kg
//from FBD
T = m *g

//Sample Problem 5-6
printf("**Sample Problem 5-6**\n")
//we have-
//T1cos(28) - T2cos(47) = 0
//T1sin(28) + T2sin(47) = T
//therefore
mat_1 = [cos(dtor(28)),-cos(dtor(47));sin(dtor(28)),sin(dtor(47))]
mat_2 = [0 ; T]
//wr have -> mat_1 * ans = mat_2
mat_ans = inv(mat_1) * mat_2
printf("The tension in the first chord is %f N\n", mat_ans(1,1))
printf("The tension in the second chord is %f N\n", mat_ans(2,1))
printf("The tension in the third chord is %f N", T)