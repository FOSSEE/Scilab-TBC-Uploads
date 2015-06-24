clc
//clears the console//
clear
//clears all existing variables//
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
     
Scilab Code Exa 2-50
//Example 2-50//
//addition of binary numbers//
clc
//clears the window//
clear
//clears all existing variables//
x=binary2decimal(11.011)
y=binary2decimal(10.001)
z=x+y
a=decimal2binary(z)
disp('the addition of the binary numbers is :')
disp(a)
//result is displayed//
