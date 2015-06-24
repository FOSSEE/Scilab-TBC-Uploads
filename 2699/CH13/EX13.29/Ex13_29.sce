//Ex13_29 PG-13.15
clc
clear
disp("Conversion of decimal number 35.45 to its octal equivalent ")
a=35.45;
z=modulo(a,1)
x=floor(a);//separating the decimal from the integer part
b=0;
c=0;
d=0;
while(x>0)  //taking integer part into a matrix and convert to equivalent octal
y=modulo(x,8);
b=b+(10^c)*y;
x=x/8;
x=floor(x);
c=c+1;
end
for i=1:10;//converting the values after the decimal point into octal
    z=z*8;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
s=b+d;
printf("\n The octal equivalent of the given decimal number 35.45 is =%.5f",s);

