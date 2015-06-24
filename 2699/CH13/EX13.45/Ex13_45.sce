//EX13_45 Pg-25
clc
clear
printf("subtraction of 101011 from 111001 using 1''s complement method")
printf("\n\n we know that 111001>101011\n\n")
printf(" Therefore 111001-101011 =")
x=['111001'];
y=['101011'];
//we should note that in the question the first binary number is 101011 and not 1001011

//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y) 
y1=bitcmp(y,6)//one's complement of the smaller number
z=x+y1;//addition of x with the one's complent of y
//subtraction of smaller number from larger number
w=bitset(z,7,0)//the end round carry should be remove and add to z 
a=w+1;
a1=dec2bin(a)//final result
printf(" 00%s",a1)
