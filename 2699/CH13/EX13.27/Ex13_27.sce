//Ex13_27 PG-13.14
clc
clear
disp("Conversion of decimal number 0.1289062 base  to its hexadecimal equivalent ")
a=[0.1289062];
z=modulo(a,1);
d=0;
for i=1:10;//converting the values after the decimal point into octal
    z=z*16;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
s=d;
printf("\n The hexadecimal equivalent of the given decimal number 0.640625 is = %.3f",s);

