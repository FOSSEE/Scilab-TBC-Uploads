//Eg-11.11
//pg-493

clear
clc

//The function to be integrated is

deff('out = func(in)','out = 8.168*in*(1-in/2.5)^0.17')

a = 0;
b = 2.5;    //Limits of integration

//Taking the values of w and x from the table 11.3
//The value of the subscripts is increased by 1 because the index 0 is not valid.

w(1) = 0.2369269;
w(2) = 0.4786287;
w(3) = 0.5688889;
w(4) = 0.4786287;
w(5) = 0.2369269;

x(1) = -0.90617985;
x(2) = -0.53846931;
x(3) = 0.00000000;
x(4) = 0.53846931;
x(5) = 0.90617985;

sum1 = 0;

for(i = 1:5)
    sum1 = sum1 + w(i)*func((x(i)*(b-a)+b+a)/2);
end

I = (b-a)/2*sum1;

printf('The value of the flowrate is %f cm^3/s',I)