//EX13_32 Pg-18
clc
clear
printf("\n\n   Conversion of hexadecimal number 2AC5.D to \n\n")

//conversion into decimal form
N=(2*16^3)+(10*16^2)+(12*16^1)+(5*16^0)+(13*16^(-1))
printf("   Decimal form = %.4f\n\n",N)

//conversion into octal form
//we take the value of the decimal form and convert it to octal form
z=modulo(N,1)
x=floor(N);//separating the decimal from the integer part
b=0;
c=0;
d=0;
while(x>0)  //taking integer part into a matrix and convert to equivalent binary
y=modulo(x,8);
b=b+(10^c)*y;
x=x/8;
x=floor(x);
c=c+1;
end
for i=1:10;//converting the values after the decimal point intooctal
    z=z*8;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
s=b+d;
printf("   Octal  form = %.2f\n\n",s);

//conversion into binary form
//we take the value of the decimal form and convert it to octal form
z=modulo(N,1)
x=floor(N);//separating the decimal from the integer part
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
printf("   Binary  form : ")
printf("\n       Integer part 2AC5 = 00%.0f",b)
printf("\n       Decimal part 0.D = %.4f00",d)
