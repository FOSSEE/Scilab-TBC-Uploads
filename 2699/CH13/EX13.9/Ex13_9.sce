//EX13_9 PG-13.7
clc
clear
disp("conversion of octal no 725.63 to binary equivalent")
a=725.63;
//first we convert the number 725.63(octal)to decimal
x=(7*8^2)+(2*8^1)+(5*8^0)+(6*8^(-1))+(3*8^(-2));
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
printf("\n The binary equivalent of the given octal number 725.63 is =%.6f",s);

