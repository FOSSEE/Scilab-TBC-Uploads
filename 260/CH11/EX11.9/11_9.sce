//Eg-11.9
//pg-488

clear
clc

a = 0;
b = 2;
h = b-a;

deff('out = func(in)','out = exp(-in^2)')

//From equations [30],[31],[32] & [33]

//Please note that the subscripts(i&j) we use here are different from that used in 
//text book i.e they are increased by 1, because we cant give the index zero in   //scilab. Therefore,

//Note : To get the results as in the book the lower limit of integration should be zero instead of 1 as in the book.

imax = 6;
jmax = 6;

I(1,1) = h/2*(func(a) + func(b));

I(2,1) = 1/2*(I(1,1) + h*func(a+h/2));

I(3,1) = 1/2*(I(2,1) + h/2*(func(a+h/4) + func(a+3*h/4)));

//From equation [33]

sum1 = 0;

for(j = 1:2:(2^3-1))    //Since we have to consider the odd terms only.
    sum1 = sum1 + func(a+j*h/2^3);
end


I(4,1) = 1/2*(I(3,1) + h/2^2*sum1);

//Similarly

sum2 = 0;

for(j = 1:2:(2^4-1))
    sum2 = sum2 + func(a+j*h/2^4);
end

I(5,1) = 1/2*(I(4,1) + h/2^3*sum2);

for(j = 2:5)
    for(i = 1:imax-j)
        I(i,j) = (4^(j-1)*I(i+1,j-1) - I(i,j-1))/(4^(j-1)-1);
    end
end

printf(' The complete Romberg tableau is as follows\n')

disp(I)

printf('\n  Therefore, the value of the integral is %f\n',I(1,5))

