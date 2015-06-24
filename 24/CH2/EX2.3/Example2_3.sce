//Given that
t = poly(0,'t');
x = 7.8 + 9.2 * t - 2.1 * t^3;

//Sample Problem 2-3
printf("**Sample Problem 2-3**\n")
v = derivat(x)
velocity = horner(v,3.5)
printf("Velocity at t=3.5 second is equal to %f m/s", velocity)