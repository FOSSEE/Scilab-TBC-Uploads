//EX13_59 Pg-33
clc
clear
printf("subtraction of two octal numbers using 8''s complement")
printf("\n (516)_8>(413)_8")
printf("\n\n (516)_8-(413)_8 =")
x=['516']
y=['413']
//octal to decimal conversion//
x=oct2dec(x)
y=oct2dec(y)
y1=bitcmp(y,8)//7's complement of the smaller  number
y2=y1+1;//8's complement of the smaller number
//subtraction of smaller number from larger number
a=x+y2;
w=bitset(a,10,0)//we discard the carry
s=dec2oct(w)
printf(" %s\n",s)
