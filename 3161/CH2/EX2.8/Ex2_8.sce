clc;
//page 99
//problem 2.8

//Given, probability density function of X is fX_x where fX_x = a*e^(-0.2*x) for x greater than & equal to 0 & = 0 eleswhere

//a = fX_x/(a*e^(-0.2*x))
//from definition integration of fX_x with limits -infinity to +infinity is 1
//As per given fX_x, integration of a*e^(-0.2*x) with limits 0 & +inffinity and obtained value be P
//a = 1/p

P = integrate('%e^(-0.2*x)','x',0,100)
a = 1/P

disp('a = '+string(a))
