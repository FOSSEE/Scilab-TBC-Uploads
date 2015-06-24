//To calculate the magnetic moment
I = 500;     //current, mA
I = I*10^-3;     //current, A
d = 10;     //diameter, cm
r = d/2;     //radius, cm
r = r*10^-2;    //radius, m
A = 2*%pi*r^2;   //area, m^2
mew_m = I*A;     //magnetic moment, Am^2
printf("magnetic moment associated with the loop is %f Am^2",mew_m);
