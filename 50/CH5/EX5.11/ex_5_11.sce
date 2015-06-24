// example : 5.11
// solve the definite integral by 1) trapezoidal rule, 2)simpsons rule
// exact value of the integral is ln 2= 0.693147,

deff('[y]=F(x)','y=1/(1+x)')

//1)trapezoidal rule,

a=0;
b=1;
I =trapezoidal(0,1,F)
disp(error =.75-.693147)

// simpson's rule

I=simpson(a,b,F)

disp(error =.694444-.693147)