// Chapter 23 Ex6

clc;
clear;
close;
n1=3;
//x=poly(0,'x');
for x=1:.5:10
    if log10((4*x+1)/(x+1))==(1-(log10(n1)))
        
        break;
end
end
mprintf("The value of x is %.2f",x);
