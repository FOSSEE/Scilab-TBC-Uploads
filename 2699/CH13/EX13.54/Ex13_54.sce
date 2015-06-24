//EX13_54 Pg-31
clc
clear
printf("Addition of four octal numbers ")
printf("\n\n    (341)_8+(125)_8+(472)_8+(577)_8 = ")
x=['341'];
y=['125'];
u=['472']
v=['577']
//octal to decimal conversion
x1=oct2dec(x)
y1=oct2dec(y)
u1=oct2dec(u)
v1=oct2dec(v)
z=x1+y1+u1+v1;//addition
a=dec2oct(z)//final result
printf("%s\n",a)
