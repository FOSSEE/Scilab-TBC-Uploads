// Variable declaration
n = 16
X1 = 2.5
X2 = 12

// Calculation
l = [41 1 5 ; 49 2 5 ; 69 3 5 ; 65 4 5 ; 40 1 10 ; 50 2 10 ; 58 3 10 ; 57 4 10 ; 31 1 15 ; 36 2 15 ; 44 3 15 ; 57 4 15 ; 19 1 20 ; 31 2 20 ; 33 3 20 ; 43 4 20]
y = l(:,1)
x1 = l(:,2)
x2 = l(:,3)

x1_sum = sum(x1)
x1_sq_sum = sum((x1.^2))
x2_sum = sum(x2)
x2_sq_sum = sum((x2.^2))
x1x2_sum = sum(x1.*x2)

y_sum = sum(y)
x1y_sum = sum(x1.*y)
x2y_sum = sum(x2.*y)

A = [n x1_sum x2_sum ; x1_sum x1_sq_sum x1x2_sum ; x2_sum x1x2_sum x2_sq_sum]
//A = A.I


B = [y_sum ; x1y_sum ; x2y_sum]
b = A\B
//b = A*B

// Result
disp ( "Least square estimates of multiple regression coefficients")
disp( b)
