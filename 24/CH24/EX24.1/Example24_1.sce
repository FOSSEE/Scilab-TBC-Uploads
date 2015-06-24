exec('degree_rad.sci', -1)

//Given that
R = 1  //(say)
E = 1  //(say)
A = 1  //cuve surface area of cylinder(say)

//Sample Problem 24-1
printf("**Sample Problem 24-1**\n")
flux = E*A + (-E*A) + E*A*cos(dtor(90))
printf("The net flux passing through the cylinder is equal to %fN.m^2/C", flux)