clc;
disp("Example 4.9")
// Here the required ratio in terms of n is 2n^2/((n+1)(2*n+1))
// and the value of this ratio is 0.817
// solving this we get the following quadratic equation
// 0.366n^2-2.451n-0.817=0
y=[0.366 -2.451 -0.817]
z=roots(y)
// z is a matrix that has the roots of the equation
//since we need the positive value of n
disp(z(1,1))
