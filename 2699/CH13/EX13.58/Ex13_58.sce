//EX13_58 Pg-33
clc
clear
printf("8''s complement (346)_8 is : ")
x=['346'];
y=oct2dec(x);//octal to decimal conversion//
z=bitcmp(y,9);//one's complement of the number//
z=z+1;
z2=dec2oct(z)//8's complement of the number//
printf("%s\n",z2)
