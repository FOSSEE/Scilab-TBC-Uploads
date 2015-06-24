//clear//
//Example9.4:Lapalce Transform x(t) = exp(-2t)u(t)+exp(-t)(cos3t)u(t)
syms t s;
y = laplace('%e^(-2*t)+%e^(-t)*cos(3*t)',t,s);
disp(y)
//Result
//[(s+1)/(s^2+2*s+10)]+[1/(s+2)]  refer equation 9.29
//Equivalent to (2*s^2+5*s+12)/((s^2+2*s+10)*(s+2)) refer equation 9.30
