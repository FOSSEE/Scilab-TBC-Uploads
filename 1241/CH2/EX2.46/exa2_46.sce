//Example 2-46//
//Conversion to decimal//
clc
//clears the console//
clear
//clears all existing variables//
p=1
q=1
z=0
b=0
w=0
f=0
//initialising//
//bin=input (enter the binary number to be converted to its decimal form)//
//accepting the input from the user//
bin=1101.000101
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
disp('the decimal equivalent of the binary number is :')     
disp(x)
//result is displayed//
