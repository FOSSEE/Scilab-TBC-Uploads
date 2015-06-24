//EX13_51 Pg-29
clc
clear
//subtraction of 10000 from 11010 using 1''s complement method
printf("  i)\n  subtraction of 10000 from 11010 using 1''s complement method ")
printf("\n  Therefore 11010-10000 =")
x=['11010'];
y=['10000'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,5)//one's complement of the larger number
z=x+y1;//addition of x with the one's complement of y
//subtraction of smaller number from larger number
w=bitset(z,6,0)//the end round carry should be remove and add to z 
a=w+1;
a1=dec2bin(a)//final result
printf("   %s",a1)
x=['1000100'];
y=['1010100'];
//subtraction of 1000100 from 1010100 using 1''s complement method
printf("\n\n  Subtraction of 1010100 from 1000100 using 1''s complement method ")
printf("\n  Therefore 1000100-1010100 =")
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,6)//one's complement of the larger number
z=x+y1;//addition of x with the one's complement of y
//subtraction of larger number from smaller number
z=bitcmp(z,6);//one's complement of the result
a=dec2bin(z)//decimal to binary conversion
printf("  -%s\n",a)//the final result is negative

//subtraction of 10000 from 11010 using 2''s complement method
printf("\n\n  ii)\n  Subtraction of 10000 from 11010 using 2''s complement method")
printf("\n  Therefore 11010-10000 =")
x=['11010'];
y=['10000'];
//binary to decimal conversion//
x=bin2dec(x)
y=bin2dec(y)
y1=bitcmp(y,6)//one's complement of the smaller  number
y2=y1+1;//2's complement of the smaller number
//subtraction of smaller number from larger number
a=x+y2;
w=bitset(a,7,0)//we discard the carry
s=dec2bin(w)
printf("   %s",s)
//subtraction of 1000100 from 1010100 using 2''s complement method
printf("\n\n  Subtraction of 1010100 from 1000100 using 2''s complement method ")
printf("\n  Therefore 1000100-1010100 =")
x=['1000100'];
y=['1010100'];
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
printf("  -%s",s)//the final result is negative
