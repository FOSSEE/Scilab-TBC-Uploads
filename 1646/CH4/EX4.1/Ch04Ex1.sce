// Scilab Code Ex4.1: Page:189 (2011) 
clc;clear;
// Declare cosine function
function r = cosine(t)
    t = poly(0,t);
    r = 1-t^2/factorial(2)+t^4/factorial(4)-t^6/factorial(6)+t^8/factorial(8)-t^10/factorial(10)+t^12/factorial(12)-t^14/factorial(14);
endfunction

// Declare sine function
function r = sine(t)
    t = poly(0,t);
    r = t-t^3/factorial(3)+t^5/factorial(5)-t^7/factorial(7)+t^9/factorial(9)-t^11/factorial(11)+t^13/factorial(13)-t^15/factorial(15);
endfunction

r = 1;  // For convenience assume radius of the circle to be unity, unit
thet = poly(0,'thet');  // Declare a variable
l = 2*r*(cosine('thet')+sine('thet'));  // Length of actual path, unit
theta = 45*%pi/180;     // Angle which the chord PQ makes with the diameter, radian
d_diff = derivat(derivat(l));   // Double derivative of 'l' w.r.t. theta
printf("\nl = %5.3fr", horner(l,theta));
printf("\nDouble_diff of l at theta = 45 degrees = %5.3fr \nwhich is negative, so the actual path is maximum", horner(d_diff, theta));

// Result
// l = 2.828r
// Double_diff of l at theta = 45 degrees = -2.828r 
// which is negative, so the actual path is maximum 


