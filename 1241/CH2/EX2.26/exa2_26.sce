//Example 2-26//
//Hexadecimal Division//
x=hex2dec('1EC87')
y=hex2dec('A5')
r=modulo(x,y)
//finding the remainder//
z=x/y
q=floor(z)
//finding the quotient//
quo=dec2hex(q)
rem=dec2hex(r)
//decimal to binary conversions//
disp('the quotient is :')
disp(quo)
disp('the remainder is : ')
disp(rem)
//answers in binary form//
