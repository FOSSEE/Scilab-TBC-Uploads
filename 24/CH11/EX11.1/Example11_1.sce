//Given that
t = poly(0, 't')
A = -1.00-0.600*t+0.250*t^2

//Sample Problem 11-1a
printf("**Sample Problem 11-1a**\n")
Ts = [-3:0.5:6]
As = horner(A, Ts)
xset('window', 1)
xtitle( 'angular variable for the disk v/s time', 'time(sec)', 'Y-axis')
plot(Ts, As, 'm-o')

//Sample Problem 11-1b
printf("\n**Sample Problem 11-1b**\n")
To = roots(derivat(A))
printf("At t=%fsec, theta approaches its minimum value equal to %f\n", To, horner(A, To))

//Sample Problem 11-1c
printf("\n**Sample Problem 11-1c**\n")
Os = horner(derivat(A), Ts)
plot(Ts, Os, 'r-+')
legend('theta(rad)', 'omega(rad/s)')