//Chapter 23, Example 23.18

//Conversion of decimal to binary//
clc
//clears the console//
clear
//clears all existing variables//
q=0
b=0
s=0
//initialising//
//a=input(enter the decimal number to be converted to its binary form)
//taking input from the user//
a=34.6875
d=modulo(a,1)
//separating the decimal part from the integer//
a=floor(a)
a1=a
a=0
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
l=dec2bin(a1)
k=b+s

disp('the decimal number in binary form is :')
printf("%s . %d",l,k*10**4)
//result is displayed//
