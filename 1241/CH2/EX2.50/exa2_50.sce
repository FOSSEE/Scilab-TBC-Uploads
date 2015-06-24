//Example 2-50//
//addition of binary numbers//
//this program requires functions binary2decimal.sci and decimal2binary.sci//
clc
//clears the window//
clear
//clears all existing variables//
function x=binary2decimal(bin)
p=1
q=1
z=0
b=0
w=0
f=0
//initialising//
d=modulo(bin,1)
//separating the decimal part from the integer part//
d=d*10^10
a=floor(bin)
//removing the decimal part//
while(a>0)
//loop to enter the binary bits of the integer part into a matrix//
r=modulo(a,10)
b(1,q)=r
a=a/10
a=floor(a)
q=q+1
end
for m=1: q-1
//multiplying each bit of the integer part with its corresponding positional value and adding//
c=m-1
f=f+b(1,m)*(2^c)
end
while(d>0)
//loop to take the bits of the decimal part into a matrix//
e=modulo(d,2)
w(1,p)=e
d=d/10
d=floor(d)
p=p+1
end
for n=1: p-1
//multiplying each bit with its corresponding positional value and adding//
z=z+w(1,n)*(0.5)^(11-n)
end
z=z*10000
z=round(z)
//rounding off to 4 decimal places//
z=z/10000
x=f+z
endfunction
function y=decimal2binary(a)
q=0
b=0
s=0
//initialising//
d=modulo(a,1)
//separating the decimal part from the integer//
a=floor(a)
//removing the decimal part//
while(a>0)
//integer part converted to equivalent binary form//  
x=modulo(a,2)
b=b+(10^q)*x
a=a/2
a=floor(a)
q=q+1
end
for i=1: 10
//taking values after the decimal part and converting to equivalent binary form//
d=d*2
q=floor(d)
s=s+q/(10^i)
if d>=1 then
    d=d-1
end
end
y=b+s
endfunction
x=binary2decimal(11.011)
y=binary2decimal(10.001)
z=x+y
a=decimal2binary(z)
disp('the addition of the binary numbers is :')
disp(a)
//result is displayed//
