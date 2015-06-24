// solves the definite integral by the trapezoidal rule,
// given the limits a,b and the function f,
// returns the integral value I 

function I =trapezoidal(a,b,f)
    I=((b-a)/2)*(f(a)+f(b));
endfunction