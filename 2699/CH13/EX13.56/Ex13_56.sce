//EX13_56 Pg-32
clc
clear
printf("subtraction of two octal numbers using 7''s complement")
printf("\n (176)_8>(157)_8")
printf("\n\n Therefore    (176)_8-(157)_8 = ")
x=['176']
y=['157']
//octal to decimal conversion//
x=oct2dec(x)
y=oct2dec(y)
y1=bitcmp(y,9)//7's complement of the smaller  number
z=x+y1;//subtraction of smaller number from larger number
//if there's any carry we should discard the carry 
//and add the carry to the result
z=bitset(z,10,0)
z1=z+1; 
a=dec2oct(z1)
printf("0%s\n",a)
