
// Calculation

l = [11.1 10.9 ; 10.3 14.2 ; 12.0 13.8 ; 15.1 21.5 ; 13.7 13.2 ; 18.5 21.1 ; 17.3 16.4 ; 14.2 19.3 ; 14.8 17.4 ; 15.3 19.0]
x = l(:,1)
y = l(:,2)

plot(x ,y,"ro")
title("y Vs x")
xlabel("$x$")
ylabel("$y$")

s1 = sum((x.^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y.^2)) - (sum(y))^2/10.0

// correlation coefficient
r = s2 / sqrt(s1*s3)

// Result
printf ( "correlation coefficient: %.3f",r)
