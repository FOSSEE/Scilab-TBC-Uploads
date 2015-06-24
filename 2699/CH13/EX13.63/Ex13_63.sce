//EX13_63 Pg-35
clc
clear
printf("   Addition of four hexadecimal numbers")
printf("\n    Therefore (4FB)_16+(75D)_16+(A12)_16+(C39)_16 = ")
x=['4FB']
y=['75D']
u=['A12']
v=['C39']
x1=hex2dec(x)
y1=hex2dec(y)
u1=hex2dec(u)
v1=hex2dec(v)
z=x1+y1+u1+v1
a=dec2hex(z)
printf("%s",a)
