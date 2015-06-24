//EXAMPLE 2.16, 
clear;
clc;
//Given input sequence = [3 4 5]
x=[0 3 4 5 0];
disp([3 4 5],'Input sequence = ')
//determining median filter
//first sequence
for k=2:4
    if  x(k)>x(k-1) & x(k+1)>x(k-1) & x(k+1)>x(k)
         y(k-1)=x(k);
     else
         x(k-1)>x(k+1) & x(k)>x(k+1) & x(k)>x(k-1)
         y(k-1)=x(k-1);
    end
end
disp(y','The Median Filter of the given input is =');

