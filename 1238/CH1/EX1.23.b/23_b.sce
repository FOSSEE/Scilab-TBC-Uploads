//BCD to decimal conversion//
//Example 23.b//
//subtraction using 2's complement//
clc
//clears the console//
clear
//clears all exisiting variables//
a=100001001111000;//taking the BCD input//
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
z1=0
c=modulo(b,10000)
for i=1:3
    y(i)=modulo(c,10)
    z1=z1+(y(i)*(2^(i-1)))
    c=c/10
    c=floor(c)
end
z2=0
e=b/10000
e=floor(e)
f=modulo(e,10000)
for i=1:2
    y(i)=modulo(f,10)
    z2=z2+(y(i)*(2^(i-1)))
    f=f/10
    f=floor(f)
end
g=e/10000
g=floor(g)
z3=0
for i=1:3
     y(i)=modulo(g,10)
    z3=z3+(y(i)*(2^(i-1)))
    g=g/10
    g=floor(g)
end
r=z3*1000+z2*100+z1*10+z
printf('the equivalent decimal number is=%d',r)
