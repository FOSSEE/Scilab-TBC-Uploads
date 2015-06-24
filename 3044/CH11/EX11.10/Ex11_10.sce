// Variable Declaration
l = [0 12.0 ; 1 10.5 ; 2 10.0 ; 3 8.0 ; 4 7.0 ; 5 8.0 ; 6 7.5 ; 7 8.5 ; 8 9.0]
X = 6.5

// Calculation
x = l(:,1)
y = l(:,2)

x_sum = sum(x)
x_sq_sum = sum((x.^2))
x_cube_sum = sum((x.^2).*x)
x_four_sum = sum((x.^2).*(x.^2))

y_sum = sum(y)
xy_sum = sum(x.*y)
x2y_sum = sum(x.*x.*y)

a = [9 x_sum x_sq_sum ; x_sum x_sq_sum x_cube_sum ; x_sq_sum x_cube_sum x_four_sum]
b = [y_sum; xy_sum; x2y_sum]
val = a\b

plot(x, y,"ro")
title("Scatter plot")
xlabel("x")
ylabel("y")

// Result
printf ( "Least square polynomial: y= %.1f - %.2f * x(1) + %.3f * x(2) ",val(1),val(2),val(3))
// for x = 6.5
printf ( "y = %.1f hours",(val(1) + val(2)*X + val(3)*(X^2)))
