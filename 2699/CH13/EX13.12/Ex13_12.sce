//EX13_12 PG-13.8
clc
clear
printf("Conversion of hexadecimal no 5A9.B4 to binary equivalent\n ")
a=['5A9.B4'];
//first we convert the number 5A9.B4(hexadecimalal)to decimal
x=(5*16^2)+(10*16^1)+(9*16^0)+(11*16^(-1))+(4*16^(-2));
//then we convert the decimal to binary
z=modulo(x,1)
x=floor(x);//separating the decimal from the integer part
b=0;
c=0;
d=0;
while(x>0)  //taking integer part into a matrix and convert to equivalent binary
y=modulo(x,2);
b=b+(10^c)*y;
x=x/2;
x=floor(x);
c=c+1;
end
for i=1:10;//converting the values after the decimal point into binary
    z=z*2;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-1;
    end
end
s=b+d;
printf("The binary equivalent of the given\n hexadecimal number 5A9.B4 is = 0%.6f00",s);


