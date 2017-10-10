//Chapter 24 Ex 23

clc;
clear;
close;
// consider two parallel sides of trapezium as a and b
a=poly(0,'a');
b=(a-4);   //from given condition 1
b=(50-a);   //from given condition 2
for a=1:99
    if (a-4)==(50-a) then
        break;
    end
end
b=a-4;
mprintf("The parallel sides of trapezium are %d cm and %d cm",a,b);