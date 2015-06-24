//EX13_48 Pg-26
clc
clear
printf("subtraction of 111001 from 101011 using 2''s complement method")
printf("\n\n we know that 101011<111001\n\n")
printf(" Therefore 101011-111001 =")
x=['101011'];
y=['111001'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,6)//one's complement of the larger  number
y2=y1+1;//2's complement of the larger number
//subtraction of larger number from smaller number
a=x+y2;//result is in two complement
a1=bitcmp(a,6)//one's complement of the result
a2=a1+1;//final answer
s=dec2bin(a2)
printf("  -00%s",s)//final answer is -ve



