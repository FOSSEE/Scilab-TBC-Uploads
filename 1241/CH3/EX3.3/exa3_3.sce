//Example 3-3//
//add 3 and 2 in Excess 3 code//
clc
//clears the console//
clear
//clears all existing variables//
n=3
m=2
z=0
a=0110
b=0101
ea=dec2bin(n+3)
eb=dec2bin(m+3)
for i=1: 4
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
    y(i)=modulo(b,10)
    b=b/10
    b=floor(b)
end
for i=1: 4
    g(i)=bitand(x(i),y(i))
    p(i)=bitor(x(i),y(i))
end
c(1)=0
for i=1: 4
    c(i+1)=bitor(g(i),bitand(p(i),c(i))) 
end
if c(5)==1 then
         z=dec2bin(bin2dec(ea)+bin2dec(eb)+3)  
end
if c(5)==0 then
          z=dec2bin(bin2dec(ea)+bin2dec(eb)-3)
end
disp('equivalent binary number after excess 3 addition' )
disp(z)
disp('equivalent decimal number')
disp(m+n)
//result is displayed//
