//Chapter 23, Example 23.16
clc

a=11100001110110                       //input BCD digits
z =0;

d= modulo (a ,10000)
for j =1:3
    y(j)= modulo (d ,10)
    z=z+(y(j) *(2^(j -1)))
    d=d/10
    d= floor (d)
end

b=a /10000
b= floor (b)
c= modulo (b ,10000)
z1 =0
for j =1:3
    y(j)= modulo (c ,10)
    z1=z1 +(y(j) *(2^(j -1) ))
    c=c/10
    c= floor (c)
end

e=b /10000
e= floor (e)
e1= modulo (e ,10000)
z2 =0
for j =1:4
    y(j)= modulo (e1 ,10)
    z2=z2 +(y(j) *(2^(j -1) ))
    e1=e1/10
    e1= floor (e1)
end

f=e /10000
f= floor (f)
z3 =0
for j =1:2
    y(j)= modulo (f ,10)
    z3=z3 +(y(j) *(2^(j -1) ))
    f=f/10
    f= floor (f)
end


r=z3*1000+z2 *100+ z1 *10+ z
printf ( '(11100001110110)BCD to Decimal  = %d ' ,r)             //display of decimal numbers
