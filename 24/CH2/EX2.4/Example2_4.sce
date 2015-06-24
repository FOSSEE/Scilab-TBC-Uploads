//Given that
t = poly(0,'t')
x = t^3  - 27 * t + 4

//Sample Problem 2-4a
printf("**Sample Problem 2-4a**\n")
velocity = derivat(x)
acceleration = derivat(velocity)
printf("The velocity as a function of time in m/s is")
disp(velocity)
printf("The acceleration as a function of time in m/s^2 is")
disp(acceleration)

//Sample Problem 2-4b
printf("\n**Sample Problem 2-4b**\n")
v0 = roots(velocity)
printf("velocity of the particle is zero at times in sec")
disp(v0)