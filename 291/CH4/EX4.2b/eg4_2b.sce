
integral = integrate('(4*x)-(2*x*x)' , 'x', 0, 2);
C = 1/integral;
disp(C, "The value of C is")
integral_new = integrate('C*((4*x)-(2*x*x))' , 'x', 0, 1);
disp(1-integral_new , "Probability that X is greater than 1 is")