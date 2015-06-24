//Ex13_26 PG-13.14
clc
clear
disp("Conversion of decimal number 0.640625 base  to its octal equivalent =")
a=[0.640625];
z=modulo(a,1);
d=0;
for i=1:10;//converting the values after the decimal point into octal
    z=z*8;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
s=d;
printf("\n The octal equivalent of the given decimal number 0.640625 is = %.2f",s);

