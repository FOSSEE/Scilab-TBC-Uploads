//EX13_61 Pg-34
clc
clear
printf("Addition of two numbers with hexadecimal base")
printf("\n\n    3_16+9_16 =")
x=['3'];
y=['9'];
//octal to decimal conversion
x1=hex2dec(x)
y1=hex2dec(y)
z=x1+y1;//addition
a=dec2hex(z)//final result
printf(" %s\n",a)
printf("\n    9_16+7_16 =")
x=['9'];
y=['7'];
//octal to decimal conversion
x1=hex2dec(x)
y1=hex2dec(y)
z=x1+y1;//addition
//we should note that the decimal sum is greater than 16 
//hence we should subtract the decimal sum by 16 to obtain the hexadecimal result
a=z-16;
a=dec2hex(a)
printf(" %s ",a)
printf('with carry of 1')
printf("\n\n    A_16+8_16 =")
x=['A'];
y=['8'];
//octal to decimal conversion
x1=hex2dec(x)
y1=hex2dec(y)
z=x1+y1;//addition
//we should note that the decimal sum is greater than 16
//hence we should subtract the decimal sum by 16 to obtain the hexadecimal result
a=z-16;
a=dec2hex(a)
printf(" %s ",a)
printf('with carry of 1')
