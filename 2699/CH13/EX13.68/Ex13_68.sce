//EX13_68 Pg-37
clc
clear
printf(" Subtraction of two hexadecimal numbers using 16''s complement")
printf("\n (CB2)_16>(972)_16")
printf("\n  Therefore (CB2)_16-(972)_16 =")
x=['CB2']
y=['972']
//hexadecimal to decimal conversion
x=hex2dec(x)
y=hex2dec(y)
y1=bitcmp(y,12)//15's complement of the smaller number
y2=y1+1;//16's complement of the smaller number
//subtraction of smaller number from larger number
a=x+y2;
w=bitset(a,13,0)//we discard the carry
s=dec2hex(w)
printf(" %s\n",s)
