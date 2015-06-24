//Ex19_14 Pg-963
clc

disp("Conversion of decimal number 0.85 base  to its octal equivalent ")
a=[0.85] //0.75 value in textbook is wrong 
z=modulo(a,1)
d=0
for i=1:10//converting the values after the decimal point into octal
    z=z*8
    q=floor(z)
    d=d+q/(10^i)
    if z>=1 then
        z=z-q
    end
end
s=d
printf("\n                   = %.6f",s);

