//Example 2-13//
//Binary Division//
x=bin2dec('110110')
y=bin2dec('101')
r=modulo(x,y)
//finding the remainder//
z=x/y
q=floor(z)
//finding the quotient//
quo=dec2bin(q)
rem=dec2bin(r)
//decimal to binary conversions//
disp('the quotient is :')
disp(quo)
disp('the remainder is : ')
disp(rem)
//answers in binary form//
