exec("degree_rad.sci",-1)

//Given that
gr_height = 3   //in m
theta = dtor(53)
g = -9.8   //in m/s^2
v0 = 26.5   //in m/s
tower_height = 18   //in m

//Sample Problem 4-8a
printf("**Sample Problem 4-8a**\n")
x = poly(0,'x')
y = x * tan(theta) + g * x * x /(2* v0^2) * sec(theta)^2
y_tower1 = horner(y,23)
if y_tower1<0 then printf("No, It does not clear the first Ferris wheel\n")
    else printf("Yes, It clears the first Ferris wheel\n")
end

//Sample Proble, 4-8b
printf("\n**Sample Problem 4-8b**\n")
y_max = horner(y,34.5)
printf("The balls clearance above middle tower is %f m\n", y_max + gr_height - tower_height)

//Sample Problem 4-8c
printf("\n**Sample Problem 4-8c**\n")
Range = -v0^2 * sin(2*theta)/g
printf("The centre of the net should be placed at a diastance of %f m form the cannon", Range)