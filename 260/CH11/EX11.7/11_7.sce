//Eg-11.7
//pg-482

clear
clc

//The function is to be integrated over the interval 0 to 1 using single and double segment applications of the trapezoidal rule.

b = 1;
a = 0;

//The integration formula for single segment application of trapezoidal rule is I = (b-a)/2 * [f(a)+f(b)]

I1 = (b-a)/2 * (exp(1) + exp(0));

//The integration formula for double-segment application of trapezoidal rule is I = (b-a)/2n * [f(a)+2*f(a+h)+f(b)]

n = 2;
h = (b-a)/(n);

I2 = (h/2)*(exp(0) + 2*exp(0+h) + exp(1));

printf('The value of the integral using 1 segment is  %f\n',I1)
printf(' The value of the integral using 2 segments is %f\n',I2')

//Using equation [28] we obtain the improved estimate as I = 4/3*I2 - 1/3*I1

I = 4/3*I2 - 1/3*I1;

printf(' Using equation [28] we obtain the improved estimate as I = %f\n\n',I)

printf(' This value represents a much better estimate of the integral. Infact,\n it is closer to the exact value of the integral, 1.7183, than any of \n the values obtained using the trapezoidal rule above.\n')
