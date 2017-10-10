//Chapter 9 Ex 4

clc;
close;
clear;
x=poly(0,'x');
for x=1:20
    if ((2^(x-1))+(2^(x+1)))==1280
        break;
    end
end
mprintf("The value of x is %d",x);
