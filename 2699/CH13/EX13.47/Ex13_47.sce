//EX13_47 Pg-26
clc
clear
printf("subtraction of 101011 from 111001 using 2''s complement method")
printf("\n\n we know that 111001>101011\n\n")
printf(" Therefore 111001-101011 = ")
x=['111001'];
y=['101011'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,6)//one's complement of the smaller  number
y2=y1+1;//2's complement of the smaller number
//subtraction of smaller number from larger number
a=x+y2;
w=bitset(a,7,0)//we discard the carry
s=dec2bin(w)
printf("00%s",s)
