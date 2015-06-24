//EX13_65 Pg-36
clc
clear
printf("subtraction of two hexadecimal numbers using 15''s complement")
printf("\n      (B02)_16>(98F)_16")
printf("\n\n    (B02)_16-(98F)_16 =")
x=['B02']
y=['98F']
//hexadecimal to decimal conversion
x=hex2dec(x)
y=hex2dec(y)
y1=bitcmp(y,12)//15's complement of the smaller  number
z=x+y1;//subtraction of smaller number from larger number
//if there's any carry we should discard the carry 
//and add the carry to the result
z=bitset(z,13,0)
z1=z+1; 
a=dec2hex(z1)
printf(" %s\n",a)
