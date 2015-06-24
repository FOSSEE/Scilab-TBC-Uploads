//EX13_53 Pg-31
clc
clear
printf("Addition of two octal numbers ")
printf("\n\n    167_8+325_8 = ")
x=['167'];
y=['325'];
//octal to decimal conversion
x1=oct2dec(x)
y1=oct2dec(y)
z=x1+y1;//addition
a=dec2oct(z)//final result
printf("%s\n",a)
