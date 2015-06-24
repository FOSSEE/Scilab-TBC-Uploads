exec('degree_rad.sci', -1)

//Given that
theta1 = dtor(60)
theta2 = dtor(90-60)
I = 1  //(say)

//Sample Problem 34-3
printf("**Sample Problem 34-3**\n")
//half of the original intensity, from the one-half rule
I1 = I/2  
I2 = I1*cos(theta1)^2
I3 = I2*cos(theta2)^2
printf("The ratio of the initial inensity to the final intensity of the light is %.4f", I3)