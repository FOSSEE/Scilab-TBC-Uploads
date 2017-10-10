//Chapter 4 Ex 12

clc;
clear;
close;

x=poly(0,'x');
for x=0.1:0.1:0.9
    if (x/(1+1-x))==0.5
        mprintf("\n The value of x is %.2f",x);
                break;
            end
end

