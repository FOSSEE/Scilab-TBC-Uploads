//EX13_52 Pg-30
clc
clear
printf("Addition of two numbers with octal base")
printf("\n\n    4_8+2_8 = ")
x=['4'];
y=['2'];
//octal to decimal conversion
x1=oct2dec(x)
y1=oct2dec(y)
z=x1+y1;//addition
a=dec2oct(z)//final result
printf("%s\n",a)
printf("\n\n    6_8+7_8 = ")
x=['6'];
y=['7'];
//octal to decimal conversion
x1=oct2dec(x)
y1=oct2dec(y)
z=x1+y1;//addition
//we should note that the decimal sum is greater than 8 
//hence we should subtract the decimal sum by 8 to obtain the octal result
a=z-8;
a=dec2oct(a)
printf("%s\n",a)
printf("\n\n    1_8+7_8 = ")
x=['1'];
y=['7'];
//octal to decimal conversion
x1=oct2dec(x)
y1=oct2dec(y)
z=x1+y1;//addition
//we should note that the decimal sum is greater than 8 
//hence we should subtract the decimal sum by 8 to obtain the octal result
a=z-8;
a=dec2oct(a)
printf("%s\n",a)
