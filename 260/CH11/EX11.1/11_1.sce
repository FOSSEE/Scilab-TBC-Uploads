//Eg-11.1
//pg-468


clear
clc

//The time required to heat up the oil from 60 to 90 degrees centigrade is calculated by integrating the function f(T) from 60 to 90.
//Where f(T) = (dT/dt), temperature gradient.

T = [60;90];

for(i = 1:2)
    f(i) = 1/(40-0.3*T(i));
end

//Now the inegration using the formula I = ((T(2)-T(1))/2)*[f(1)+f(2)]

I = ((T(2)-T(1))/2)*(f(1)+f(2)); // Trapezoidal rule

printf('The value of the integral using the formula is  %f\n\n',I)
printf(' The exact value of the integral is 1.75(obtained analytically)\n')
printf(' Note that since the function is nonlinear, the value of the integral is approximate.') 