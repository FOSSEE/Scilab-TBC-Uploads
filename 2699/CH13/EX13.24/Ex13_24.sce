//Ex13_24 PG-13.13
clc
clear
disp("Conversion of decimal number 0.8125 base  to its binary equivalent ")
a=[0.8125];
z=modulo(a,1);
d=0;
for i=1:10;//converting the values after the decimal point into binary
    z=z*2;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-1;
    end
end
s=d;
printf("\n The binary equivalent of the given decimal number 0.8125 is = %.4f",s);

