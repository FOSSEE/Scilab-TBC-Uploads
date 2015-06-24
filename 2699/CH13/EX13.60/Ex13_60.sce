//EX13_60 Pg-34
clc
clear
printf("subtraction of two octal numbers using 8''s complement")
printf("\n (316)_8<(451)_8")
printf("\n\n (316)_8-(451)_8 =")
x=['316']
y=['451']
//octal to decimal conversion//
x=oct2dec(x)
y=oct2dec(y)
y1=bitcmp(y,8)//7's complement of the larger  number
y2=y1+1;//8's complement of the larger number
//subtraction of larger number from smaller number
a=x+y2;//the result obtained will have no carry since 
//the second number is larger than the first number
//hence we should take 8's complement of the result
a1=bitcmp(a,8)//8's complement of the result
a2=a1+1;//final answer
s=dec2oct(a2)
printf("  -%s",s)//the final result is negative

