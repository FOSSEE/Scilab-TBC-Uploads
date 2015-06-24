//equation//
ieee(2);
s=%s;
m=2*s^4+(4*s^2)+1
routh=routh_t(m)    //Generates the Routh Table
roots(m)            //Gives the Roots of the Polynomial(m)
disp(0,"the number of roots lying in the left half plane of s-plane=")
disp(0,"the number of roots lying in the right half plane of s-plane=")
disp(4,"the number of roots lying on the imaginary axis=")
