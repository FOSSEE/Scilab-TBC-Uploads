exec("degree_rad.sci",-1)
exec("cross_product.sci",-1)

//Given that
a = [3,-4,0]
b = [-2,0,3]

//Sample Problem 3-8
printf("**Sample Problem 3-8**\n")
cross_ab = crossproduct(a,b)
printf("The cross product of given vectors is ")
disp(cross_ab)