//EX13_68 Pg-37
clc
clear
printf(" Subtraction of two hexadecimal numbers using 16''s complement")
printf("\n (3B7)<16-(854)_16")
printf("\n  Therefore (3B7)_16-(854)_16 =")
x=['3B7']
y=['854']
//hexadecimal to decimal conversion
x=hex2dec(x)
y=hex2dec(y)
y1=bitcmp(y,12)//15's complement of the larger  number
y2=y1+1;//16's complement of the larger number
//subtraction of larger number from smaller number
a=x+y2;//the result obtained will have no carry since 
//the second number is larger than the first number
//hence we should take 16's complement of the result
a1=bitcmp(a,12)//16's complement of the result
a2=a1+1;//final answer
s=dec2hex(a2)
printf(" -%s",s)
