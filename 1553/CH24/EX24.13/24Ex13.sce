//Chapter 24 Ex 13

clc;
clear;
close;
inc=3; dec=4;
x=poly(0,'x');
y=(x-7);   //from given condition 1
y=(3*x-12)/4;   //from given condition 2
for x=1:99
    if (x-7)==((3*x-12)/4) then
        break;
    end
end
y=x-7;
area=2*(x+y);
mprintf("The perimeter of the rectangle is %d cm.",area);