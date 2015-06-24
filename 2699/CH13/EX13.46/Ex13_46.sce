//EX13_46 Pg-25
clc
clear
printf("subtraction of 111001 from 101011 using 1''s complement method")
printf("\n\n we know that 101011<111001\n\n")
printf(" Therefore 101011-111001 = ")
x=['101011'];
y=['111001'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,6)//one's complement of the larger number
z=x+y1;//addition of x with the one's complement of y
//subtraction of larger number from smaller number
z=bitcmp(z,6);//one's complement of the result
a=dec2bin(z)//decimal to binary conversion
printf(" -00%s",a)//final answer is -ve


