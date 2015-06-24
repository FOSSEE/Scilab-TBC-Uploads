//Ex13_31 PG-13.17
clc
clear
printf("\n  i)\n Conversion of binary number 101101.1101 to\n\n")

//conversion into decimal form
N=(1*2^5)+(0*2^4)+(1*2^3)+(1*2^2)+(0*2^1)+(1*2^0)+(1*2^(-1))+(1*2^(-2))+(0*2^(-3))+(1*2^(-4));
printf(" Decimal form = %.4f\n",N)

//Conversion into hexadecimal form
x=floor(N);//separating the integer part from the decimal part
b=dec2hex(x);
z=modulo(N,1);
d=0;
//converting the values after the decimal point into hexadecimal
//first we convert into decimal form and then into hexadecimal form
for i=2:5;//converting the values after the decimal point into hexadecimal
    z=z*16;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
   if (d==.10)
           a=['A']
           end     
   if (d==.11)
           a=['B']
           end
   if (d==.12)
           a=['C']
           end
   if (d==.13)
           a=['D']
           end
   if (d==.14)
           a=['E']
           end
   if (d==.15)
           a=['F'] 
           end        
printf(" Hexadecimal form = %s.%s\n",b,a)

//conversion into octal form
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
printf(" octal  form = %.2f\n\n",s);
printf("\n  ii)\n Conversion of binary number 11011011.100101 to\n\n")

//conversion into decimal form
N=(1*2^7)+(1*2^6)+(0*2^5)+(1*2^4)+(1*2^3)+(0*2^2)+(1*2^1)+(1*2^0)+(1*2^(-1))+(0*2^(-2))+(0*2^(-3))+(1*2^(-4))+(0*2^(-5))+(1*2^(-6));
printf(" Decimal form =%.6f\n\n",N)

//Conversion into hexadecimal form
x=floor(N);//separating the integer part from the decimal part
b=dec2hex(x);
z=modulo(N,1);//first we convert into decimal form and then into hexadecimal form
d=0;
//converting the values after the decimal point into hexadecimal
for i=1:10;//converting the values after the decimal point into hexadecimal
    z=z*16;
    q=floor(z);
    d=d+q/(10^i);
    if z>=1 then
        z=z-q;
    end
end
printf(" Hexadecimal form\n    integer part 11011011 =  %s \n    ",b)
printf("decimal part 100101   =%.2f\n\n",d)

//conversion into octal form
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
printf(" octal  form =%.2f",s);

