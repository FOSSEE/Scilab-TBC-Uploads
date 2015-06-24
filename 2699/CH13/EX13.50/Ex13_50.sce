//EX13_50 Pg-27
clc
clear
//subtraction of decimal numbers using 2's complement
//given decimal numbers
x=42;
y=68;
//conversion from
x1=dec2bin(x)
y1=dec2bin(y)
printf("The binary equivalent of 42 is :")
printf("  00%s\n",x1)
printf(" The binary equivalent of 68 is :")
printf("  0%s\n",y1)
//finding 2's complement of 68
y2=bitcmp(y,7);
y2=y2+1;
z=x+y2;
//since we have subtracted a larger number from a
// smaller we sjould take  2's complement of the result
z1=bitcmp(z,7)
z2=z1+1;
a=dec2bin(z2)
printf(" Therefore (42)_10-(68)_10 in binary is =")
//final answer
printf("  00%s = ",a)//the final result is negative
printf(' -%d',z2)
