//BCD to decimal conversion//
//Example 23.a//
//subtraction using 2's complement//
clc
//clears the console//
clear
//clears all exisiting variables//
a=010000111001;//taking the BCD input//
z=0;
d=modulo(a,10000)
    for j=1:4
     y(j)=modulo(d,10)
     z=z+(y(j)*(2^(j-1)))
     d=d/10
     d=floor(d)   
    end
b=a/10000
b=floor(b)
c=modulo(b,10000)
z1=0
for j=1:2
    y(j)=modulo(c,10)
     z1=z1+(y(j)*(2^(j-1)))
     c=c/10
     c=floor(c)   
end
e=b/10000
e=floor(e)
z2=0
for j=1:3
    y(j)=modulo(e,10)
     z2=z2+(y(j)*(2^(j-1)))
     e=e/10
     e=floor(e)   
end
r=z2*100+z1*10+z
printf('the decimal equivalent of BCD code is=%d',r)
