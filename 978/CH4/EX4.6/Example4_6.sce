//chapter-4,Example4_6,pg 490

add="0011"//binary-3 to be added

x="0010"//binary-2

x=bin2dec(x)

add=bin2dec(add)

XS31=x+add

XS31=dec2bin(XS31)

y="0100"//binary-4

y=bin2dec(y)

XS32=y+add

XS32=dec2bin(XS32)

z="0111"//binary-7

z=bin2dec(z)

XS33=z+add

XS33=dec2bin(XS33)

printf("XS-3 for 2\n")

disp(XS31)

printf("XS-3 for 4\n")

disp(XS32)

printf("XS-3 for 7\n")

disp(XS33)