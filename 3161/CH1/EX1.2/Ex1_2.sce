clc;
//page 12
//problem 1.2

//Given signal u = 2*sin(0.5*%pi*t) 

//Since u is periodic, averaging over -infinity to + infinity will give the same result as averaging over -2 to 2, where 4 is the time period.

t0 = -2;
t1 = 2;
E = integrate('(2*sin(0.5*%pi*t))^2','t',t0,t1)/4;

disp(E,'The power of the signal is ');
