s=%s
p=s^4+s^3+2*s^2+2*s+3
h=routh_t(p)
disp(h)
disp("The element of 1st column 7th row is zero.......its replaced by epsilon(very small quantity)")
disp("for epsilon<0 seventh element is negative of the 1st column giving 2 sign change implying two positive roots (real) ")
disp("for epsilon>0 tenth element is zero giving same conclusion")